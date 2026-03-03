Return-Path: <devicetree+bounces-270413-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIXMLPmzpmk7TAAAu9opvQ
	(envelope-from <devicetree+bounces-270413-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:12:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD8F1EC72E
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B21C30F8506
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C3B7396D3D;
	Tue,  3 Mar 2026 10:09:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fNHQduV1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GyXQqBV0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1D93845A4
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532553; cv=none; b=rQDkkzG6NV+6MD9hHnPzWXYJgcH0oCEZXPyijOKr0LlDNNiON9wr0l+2I7lBmnGgHaPLYZLnZ/3hD+UkuAC8z69Yst+kHpyAXytdaM8T8O09ZCdeT1tX7/RItOB6NrAYSEYyB+1uwqwxCSQOneZYI34N4bDUruo6gtPyzie2+1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532553; c=relaxed/simple;
	bh=CAjibhKIveYSZy/s1rWfntj2pCMZtz/M3AwvCrWlhkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XEiE3DnloHqT+3/P4CMnIyGY1IrbatiA5SYC01T0l+kdxEC9EHLVZU7m5jn5kNK+WxS6Tq6GaKpOThzU4cWsSEridDat2W+OPSK5WkB7T4l7jIQr9Y6p6bpx9V6rcfd7ORbop8nBbnaMcZUx5r1/56K3cU7OPXEs5dCM09BWVfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fNHQduV1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GyXQqBV0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6239mnKN3951840
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 10:09:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WYOAQfFYZ8w2QjHgkhsWraWI
	94d9+/d/Y7OSLZSbp7U=; b=fNHQduV16W7bfwqtqpIPDJcpI+oIvoEkd8woGXLy
	3dN92fOQ1/M9QfEAI7dehDhMznrj+5qC7Yo1noJBfPztLpquTUjONMrnbOarAfMW
	cr/CfhLHlwq2zrYtHxkzcjBKSeeAjbBSvn+o+q7FNYz1MsmKegQoZA2vRoWuPWmZ
	ximeq4i1ttFkaQiZoCHxAomKlgWvfzBd1l8NlpiZfiH4YhmW4hDFLOEpSRoJCcFS
	LN0mul9m2Q/VvaT9X0QutzuAJQ2V9Yn8pdCkoq199o1hGCQb+Wgt82Ui9cB2rphE
	+elSbkru0iLttDkfTPhiImqJ9rLEElPDIvHphHkjHeE3ow==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3n8k61-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:09:09 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cb5359e9d3so4116099985a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 02:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772532549; x=1773137349; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WYOAQfFYZ8w2QjHgkhsWraWI94d9+/d/Y7OSLZSbp7U=;
        b=GyXQqBV0nJOQFZap0jClyKAQ6/d1+NFj6qbjY82we/WdC+7F45pq1zqdpS5bVaoAdB
         6km5tpgdNy+juyjZ1/lPvmOcDVCDuikSemxfOx0keR6ueCIbK5jiaIzNNKVV36MvLV8+
         UQAyFHZZxIgarftaR9irJNK7I5eCKrJYarQjllk4ntD7jXTSFdk1hlJIqvE3iplW0mJO
         /jmp6C0Et9zbpWgZxhYy7Ir+Brrf2L5qToBV0NUD5KnQXd/6SQm7QixiZsHE12VSoo/t
         BOSLVu1ZuoceB0iPlAKH0adL50wH5TG2mlo3AKeY3JIHEi7p8qRfwze9m1Ja5siG3XAp
         uAgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772532549; x=1773137349;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WYOAQfFYZ8w2QjHgkhsWraWI94d9+/d/Y7OSLZSbp7U=;
        b=ORsAOPZOJs3PLTG7Ol0i4jHc/rf8AS2tWSe19V9YpXWT/XA68UNktOo3VE2TJPzLYJ
         VdaAcNtrVLs/pZE7KghjnZIm6gmBugCj8XqK49yaeP6GzsanpVyUMci9KHUzFIrK7foB
         D9uaJAF97uqDlvEa5JdOrjZye3JfQxjYbkQzn/xyIfkkf70RBsWfxO3ZT5r80c0b3FIS
         2KgrtuighIV0GvF8ut+3CCfEOHU58PiDYF8KAICHca4H4IjINj1UHb8ckTvmjYmQkCiV
         vlsdJqKyng/R5WRUjJb4PeJBXuLUFpA6gjKn/sUvxC7CuswgpliAS3tV2Ng5dEyYcLBg
         Yg0A==
X-Forwarded-Encrypted: i=1; AJvYcCWpfxstKjKS5ZJkULP6549m5D49H3MSaX5gth02Ua8/GepVYEdH6dCfyje1o4VKlhIYJKZTRkJqqnrX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd6PUJYB1Bp4tX5G5jA+Hn7DqVbAWGyEikokW11L+C+2Hdt1VF
	j0VhgKhFz57FBb6yTbZbm6drKTe6+vW7wI5JNt7AsN2/OIYC2/EAMdwDdRO2c1CuLUm+Z8h+QtM
	Di04JDUAufZQwuhhffTA/u9ucZd7yYPB4jq3Urlm/P1Tnf94D73YL3gxQ4oLj1eoL
X-Gm-Gg: ATEYQzzPuwaIYYkDLYZX2My3uZy+xOJIh6sqHWp+xa0L3CaKsADPil9gRne7Th/V0TI
	wOMwVF8qSTcbm2t6b8Q36KfZ5dWRL4KfNeb696Xefy6KJDqUvmlJ/1s37wz0TQ0lUvHBPhLyBa9
	I/5iMHAFAwajPVFfrb8YykEGTrM8tpBbmr6M6gb/UHlP55taZ3WBBFItr5TZSyo7sP2x9c1dGpc
	Ug5j/y/xLOpXfnhNH8Wz9xpFBT3ctQwUKUxz5U92WmogFrpsKL0CYUCRgFBKa7Gp/kr8R2Qu0V0
	7Uvm7c25OgOMnfg+tgnHvqG9HG78FCDDU1+r9dhmVBpBghDHF/74dkiyt/dDD07cNJt+4VgtoHc
	Hil1PsEWig8puneGT9BnXVL7bUyU1i0w4qEoZ
X-Received: by 2002:a05:620a:f05:b0:8b2:7558:406d with SMTP id af79cd13be357-8cbc8e77326mr1911518085a.61.1772532549131;
        Tue, 03 Mar 2026 02:09:09 -0800 (PST)
X-Received: by 2002:a05:620a:f05:b0:8b2:7558:406d with SMTP id af79cd13be357-8cbc8e77326mr1911515285a.61.1772532548602;
        Tue, 03 Mar 2026 02:09:08 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851335648esm26518285e9.5.2026.03.03.02.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 02:09:07 -0800 (PST)
Date: Tue, 3 Mar 2026 12:09:05 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
Subject: Re: [PATCH RFT v2 1/2] arm64: dts: qcom: glymur: Describe display
 related nodes
Message-ID: <dkhncrsubfn2ndkyijyyba3kxex3wrtwlhpfrp7fhvvlznbr6i@pnritazpcytk>
References: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-crd-add-edp-v2-1-8026af65ecbb@oss.qualcomm.com>
 <eee57d72-701b-41e9-b7b8-743bf7c38f13@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eee57d72-701b-41e9-b7b8-743bf7c38f13@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a6b345 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=eXe5tXp9bBsQLoiZQ0UA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: uzMnIBUXN7JdKIrT_Us5JYFcKDxYIEIR
X-Proofpoint-GUID: uzMnIBUXN7JdKIrT_Us5JYFcKDxYIEIR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA3NiBTYWx0ZWRfX94ZELE9X43dt
 1l6bxrJMSXcjojm8qcY+prxm2/14OMUBtWnvfDpK8AwVvLw1rll83zKVu5ndNUAUoTjIsOYeT97
 RZn+bs410T19i85yiAz0E2RuzNU5FTX/UHy3Uo5WoYurDjZSt1jgCMszdYuxveG0pmLAFYnDB7Z
 RjnjGSQH9N2B6Xo3D3dLk/tSO0xBsqLvgBteF4fk6VJw4h3IEf4ma4TgQ0OEk7jdRapkejMDLK6
 6LVdQUi8y/YR4Uca1ecGa+9OzHXwTjfwM83yV/krZlOkxItgcDOHb3McjtJ5vJulP479T8E+3W2
 Z2hcAFH6dIMBcN1LMLTJ/JMB4RoJWudk/0H4TMgudqwybZCOxW2Xgb0CoZQOFJJ8jvnKnfn2g7P
 Ewi+wOQN1qG43FR0Z94TeLowg3ujXvgxvevwVjGz7LHMuo9B4t7PznyjTDpirPiZCPT6GPUMoRx
 M4zvY8V9vFsp9Bn+OBQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030076
X-Rspamd-Queue-Id: 1CD8F1EC72E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270413-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,fa0000:email,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[0.0.0.2:email];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 26-01-27 13:48:24, Konrad Dybcio wrote:
> On 1/13/26 4:00 PM, Abel Vesa wrote:
> > From: Abel Vesa <abel.vesa@linaro.org>
> > 
> > The MDSS (Mobile Display SubSystem) on Glymur comes with 4 DisplayPort
> > controllers. Describe them along with display controller and the eDP
> > PHY. Then, attach the combo PHYs link and vco_div clocks to the Display
> > clock controller and link up the PHYs and DP endpoints in the graph.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/glymur.dtsi | 431 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 423 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > index 53b8ab7580bd..0b7b2756508c 100644
> > --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
> > @@ -2377,6 +2377,7 @@ port@2 {
> >  					reg = <2>;
> >  
> >  					usb_dp_qmpphy_dp_in: endpoint {
> > +						remote-endpoint = <&mdss_dp0_out>;
> >  					};
> >  				};
> >  			};
> > @@ -2447,6 +2448,7 @@ port@2 {
> >  					reg = <2>;
> >  
> >  					usb1_ss1_qmpphy_dp_in: endpoint {
> > +						remote-endpoint = <&mdss_dp1_out>;
> >  					};
> >  				};
> >  			};
> > @@ -2466,6 +2468,27 @@ usb_2_hsphy: phy@fa0000 {
> >  			status = "disabled";
> >  		};
> >  
> > +		mdss_dp3_phy: phy@faac00 {
> 
> This definitely says eDP2 in the docs..

Sorry for the late reply.

I suggest we keep using the mdss_dp3_phy here, otherwise it will
be confusing as to suggest we use the mdss_dp2_phy with the mdss_dp3
controller.

So I will respin with this as is.

All other comments will be addressed as you suggested, in the next 
version.

Thanks for reviewing.

