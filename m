Return-Path: <devicetree+bounces-246179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5132ACB9A27
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 20:23:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E55263007E49
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 19:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF9E730B53D;
	Fri, 12 Dec 2025 19:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JBVSoU2+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="kkBBpBxS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C46530AAAF
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 19:22:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765567376; cv=none; b=iGkVh8gvstmesEZ4h9N8MKHL/XBJrk/KBKOOfxi845d92/Pdk0z65jHXA0VOYAKCCJgr125tUsMYN51BGY0Ca/ghcGT+G5ScKyC3d7xifilV7U12l279oDSEaBU3mSLAcbQPARTRXWA+KFW+4JdtIfxFSq0wnNOHG67QMLOo36w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765567376; c=relaxed/simple;
	bh=CjfLnsDhDjz8sEci74hAn0dOi1NB8X2mjEsa3uppI28=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tlq/FhUPY5DKtg3EPdVifhgRv2F+xaD4+Gs1tkWUPzPrbPz5U7vxrkKGzZCZ6Kq3ii/j+gous4cdgOdGS+F6Zti++7KjHfwtqbgu8hT7YlN12lCH4jVYWo6ln98kOi0EJ4dEAc+idt2YqnFenZfYj8LLxVXFiVUE6douWjyqUO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JBVSoU2+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=kkBBpBxS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BCA4Rio116891
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 19:22:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=j3TvJS4H5C/2qPse66+dX9Tv
	NGtAtcH3VduSDU27f5E=; b=JBVSoU2+7XBnbj/yZvBi5z/wZxXzhTElmTEGovZ8
	DEnYXv/5zQBRhlRSF/rFk0/fC0jtT+zKpDpl1w20EDKdQ/TxUwt40Gi44bz8Txov
	cRoh3MdEK637N+z8f554s3cH3gNI5IVxr+stqkOYgDKwk8/l3CtskmzaFy8uKhZu
	6H8gQoDrFRHavzOWpwrwnl70RerI5pBMroTW3zSQ8W8MdzniAS4O/UuCu9FnOnCM
	QBQgX+Ehu4Sum0bcfvLhf93x7mNauU1dfzlYgMaAKv41aowkIpszypfQt7j2eXfZ
	WT90XohgdBu7oprWjz/5XmwF2ricuiI80sllEq2pm6sjgQ==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b0gyj13k1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 19:22:53 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-559867c92dfso722683e0c.1
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 11:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765567372; x=1766172172; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j3TvJS4H5C/2qPse66+dX9TvNGtAtcH3VduSDU27f5E=;
        b=kkBBpBxSgPdQ2UvKRh6dGaXNMphj/bSZXd5F3GhUIbkY22M+NCwTH4FNi6Qm28MqKI
         S4mVcR+bFgnmwhdvmhgg49yNPfxrG8HOL+2sgzgSlKkWlUVKJpSfqI5Dtl1L5epLoXTQ
         oZysn1aoV0OZ9wzbWOFTmzS0j5+VxeptGqE/giQTGE6VCR52z+9V8DZN6DwKAPZp4lO8
         od+7mF9ukKuhLVHRjyd7W1qR3Hi/j4t0S0tdRvYNzSTBKuR6HPKdDkbMAq1SSfc7j1pg
         rhlvEfZ8lUv3cRUUJCLRL3JhwmMOXCuV/JcrgNIpvg5hxP8V/FBzMwkvf+f57FporIFl
         ooEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765567372; x=1766172172;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j3TvJS4H5C/2qPse66+dX9TvNGtAtcH3VduSDU27f5E=;
        b=YIihPGdfRriwti8nN5yB4Y4naxQjaPQJOw3IUFCz9yfZjMJDINpr2SYkT7Q/BGhLdG
         N1b7GsI5wQlTu3W30MikItcgjy/emPNS/UBQLjMBHkXUGPkdezJFVNBYDSR0Urpr+3gm
         5q39oHjOlhc+1GoUJ/R2ZC0jbOQHtS0N3m+yV8kqman05V+0C5JrIPC0uU+CglkJu45u
         UslM9z/g/6nCBZCU3JKaECB0JGYwqXBy5pE/grmmE5w2FVy9Ts3a0f/XWeNSo6CeqCQB
         geKkcSBYkuFG41XO4H3vYF702IxAwsEUIaVR617sLoM8VGxSFZEVghvL7yVBvhkaeNCl
         2h7A==
X-Forwarded-Encrypted: i=1; AJvYcCXHlPBAFD30TM5yhu+bcDY3kg9Mw1z/1Dv91awwZVHndPNhFRGIRNGZ8obbHSZ4AV8v1l6Jg+R5mHv8@vger.kernel.org
X-Gm-Message-State: AOJu0YwZMyHTW2iEGc2TJatAbdZnFTZUVumugWWA2gSdYt4cF8KFvRDp
	5kE+F7/NiNynb2rTRDt082aWC3ePlcVb2p9HMMGFjnNd6RPLP1eGLL+nidkCC1jCwqH3BnARzbP
	vC2UMscZZcWs+HSKZAGoSUe9zgIVZWVMTn+GSFYmqcLIySy4jm7exscAN3oMuAjKQ7rFrtE6k
X-Gm-Gg: AY/fxX6M08JO9HbtGmFXNVqCo7QmNH8HbpsoHAiR0oxxXp4CtyULsad+w+NnKGz+rO9
	ZxiG5EKtUrvFDjrldlVvfrEXNEVeiCUXuZXhYOKMfs3uVU33OOUwF7nycHfj7Bs83K43pjXNYHn
	NdwnYMsJDDY1bwsXuOHbPrYRENt8WOQfnOwcEdp6gcb2pv24UZ+QDbbTU6arE6M+N+VsTA7yUYF
	eU0lUbzo1nppJYSfChPBNR5n7Zl0RkYB4SD1iefCZcUa05SiYF4KRGZ8rUikoXqWHZBuYSUHZ8S
	FMDNhuPCfQCM1w/3LsCYrheq1AIhz2r4PzL0FKR/vg8LELt+lKSb6uDaPqI5NYqTtKdXpliYrmn
	Ejim+9yknfFSic+gUbAMeb9Hr8pgmRQw4FR5mQMvMIuaTmL7E+d4mb4n/W6Ia2QrsPVQUcZK8nP
	kmYgzA9WfUlNVqr3qvkTP4JB4=
X-Received: by 2002:a05:6122:a11:b0:55b:1a1b:3273 with SMTP id 71dfb90a1353d-55fed588aabmr1206015e0c.6.1765567372511;
        Fri, 12 Dec 2025 11:22:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGCaSYONvY3EjV0cRj3EU1L+YuZuPH6KLBtamSWh0/EV4Kun8bjuwaeMcE0m8Hr6nzF8y+eyg==
X-Received: by 2002:a05:6122:a11:b0:55b:1a1b:3273 with SMTP id 71dfb90a1353d-55fed588aabmr1205999e0c.6.1765567372022;
        Fri, 12 Dec 2025 11:22:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37fd2c7ce3csm7358241fa.49.2025.12.12.11.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Dec 2025 11:22:51 -0800 (PST)
Date: Fri, 12 Dec 2025 21:22:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-media@vger.kernel.org, Robert Mader <robert.mader@collabora.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Subject: Re: [PATCH v4 5/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
Message-ID: <d7jcawzugobqern6zlo5jwcnximtsroxywix53v2yp2isvzo5r@ymxicmgfjmzq>
References: <20251211014846.16602-1-mailingradian@gmail.com>
 <20251211014846.16602-6-mailingradian@gmail.com>
 <wwpqaecvz42jopgaboasbh353ieelctpvgo3yj6y5tnxoem5oz@j5sbx3yxntot>
 <aTtkwQb2gOeWAFuv@rdacayan>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aTtkwQb2gOeWAFuv@rdacayan>
X-Authority-Analysis: v=2.4 cv=Er3fbCcA c=1 sm=1 tr=0 ts=693c6b8d cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=QX4gbG5DAAAA:8 a=pGLkceISAAAA:8 a=xa5dgz69VtNZBVs00rIA:9 a=CjuIK1q_8ugA:10
 a=hhpmQAJR8DioWGSBphRh:22 a=AbAUZ8qAyYyZVLSsDulk:22
X-Proofpoint-ORIG-GUID: lphavSukE_u6y5sHQKYEPVyea0u5yhNk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEyMDE1NSBTYWx0ZWRfX1k68BBsvBY9s
 GuggDW1BQdrcbBGybzq201yfNREgXmjJs8i/+0CmURylvc1EZLvePFDDxzYjTIaotY2n+RbX/ST
 VUQAZV+3+cVg4FTRvCVbhC0Xyx/dR0hbsy8Or/f7ozu2nV4TLyu4uoj+0X0gdXFSGniaG5ho6Rs
 e6ypc4CoMALa5EGjIq1QlaL5UkRH9IuME3tYiThHjWlqnGeWXbzBq4GRlmh0kMRX4HMlydyk3dZ
 pDjj41xcSJY3mM72pH7F7356c0N5bjqd3HMLu0/z1wHnzByvtdZB1t6SWJGkj3utAcVjk8k0UwI
 JSQ50wd5f8oQwcZ+7b/d5pbEZHbdaXgwDmVM+/Bg4CtwpQagDWBumtAJ+m9ayMhLFyH7jDtm0hl
 IcEfXN/dk/Je5Y2WZIZL0xchOAIjCQ==
X-Proofpoint-GUID: lphavSukE_u6y5sHQKYEPVyea0u5yhNk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-12_05,2025-12-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 phishscore=0 clxscore=1015 spamscore=0
 priorityscore=1501 adultscore=0 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512120155

On Thu, Dec 11, 2025 at 07:41:37PM -0500, Richard Acayan wrote:
> On Thu, Dec 11, 2025 at 07:16:30AM +0200, Dmitry Baryshkov wrote:
> > On Wed, Dec 10, 2025 at 08:48:46PM -0500, Richard Acayan wrote:
> > > The Sony IMX355 is the front camera on the Pixel 3a, mounted in portrait
> > > mode. It is connected to CSIPHY1 and CCI I2C1, and uses MCLK2. Add
> > > support for it.
> > > 
> > > Co-developed-by: Robert Mader <robert.mader@collabora.com>
> > > Signed-off-by: Robert Mader <robert.mader@collabora.com>
> > > Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> > > ---
> > >  .../boot/dts/qcom/sdm670-google-sargo.dts     | 107 ++++++++++++++++++
> > >  1 file changed, 107 insertions(+)
> > > 
> > > @@ -392,6 +420,64 @@ vreg_bob: bob {
> > >  	};
> > >  };
> > >  
> > > +&camss {
> > > +	vdda-phy-supply = <&vreg_l1a_1p225>;
> > > +	vdda-pll-supply = <&vreg_s6a_0p87>;
> > > +
> > > +	status = "okay";
> > > +
> > > +	ports {
> > > +		port@1 {
> > > +			camss_endpoint1: endpoint {
> > > +				clock-lanes = <7>;
> > > +				data-lanes = <0 1 2 3>;
> > > +				remote-endpoint = <&cam_front_endpoint>;
> > > +			};
> > > +		};
> > > +	};
> > 
> > This would be much better:
> > 
> >   &camss_endpoint1: {
> >       clock-lanes, data-lanes, remote-endpoint here
> >   };
> 
> I'm not sure what you mean, there might be some typo.

My point is that you are duplicating `ports { port@1 {.... }; };` from
the base DTSI here.  We usually try to avoid this kind of path
duplication. If you can't have an empty endpoint in the base DTSI, I
suggest adding necessary labels to port@N nodes and then extending those
nodes in the board DTSI.

> If this is about using the commonly-defined endpoints, Vladimir broke it
> in commit dcf6fb89e6f7 ("media: qcom: camss: remove a check for
> unavailable CAMSS endpoint"). If I do this again and go full circle, I'm
> afraid this could break a second time before even making it to
> linux-next.

-- 
With best wishes
Dmitry

