Return-Path: <devicetree+bounces-262589-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCwoOJggg2nWhwMAu9opvQ
	(envelope-from <devicetree+bounces-262589-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:34:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3142BE48AF
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 11:34:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 396D5300A765
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 10:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86E643DA7D0;
	Wed,  4 Feb 2026 10:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cjmhr2cO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JWnCHPzA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF5A3D7D6F
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 10:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770201139; cv=none; b=TZLXflRU71iP+Pat4R7hxE0IyLflBA1nrxuYgGZ0qCjzCijjl4XFKoIYTH4XVtyeRSbkh8RtJ+IDUHtCnU7VDNVFu+RNO1Fe/1CEF4B2NeKYtPei1BNYeHdj9ek0UXko22fDcVQwjjWzZkISbBmY8rT/kpE3Nb9B7krKW6PBuP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770201139; c=relaxed/simple;
	bh=dA9HGnoYrsyw199BWM92sVwUec6CG6Nx3O2r1xdUEpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l6pFeUB2MaheEKndBFLP0Ztmal3NEY/G05T/nKZDAbQWTLxrs2FGKndRe0pkWMQdP4t+fJ4M8wwiB0Wc0Taj8sQ8cx3iwwLwLtq0izk8INaHHE50BvckTKizLbOeDV7k0XTLKksYTv+XlC1TFWTGOy7aWou7+OoILQaFBXHL7R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cjmhr2cO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JWnCHPzA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6147EtZf060571
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 10:32:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EZVaMLvlgDWhkf7Hi1ntH/HGfqniNLCamW0vWobtXgI=; b=cjmhr2cODKqsJj0f
	NT+1XqsAvJQNq4eTdA6pGWfYnLNhgzab0tiRsvhAhrJ+Qu6N7JGsNjS2y2dcuVwh
	WDg4ZGGsFQMrrbQntzAndrTajg5RpO4H+VopA/dAst8O+MVfK409zAzxPHCaK07K
	WYHlafuiRkISQS6WiiSTkt0G9ukfNDJwQHmwm0Z2rnVKfJ4Xw3STIaJcv2dXc204
	fa4Wq75yabMB3tQodhyGGl5KGlh81tLFk4UrT2fi6FbxT7+AYss6Qi0qmClzn0Ru
	HXbpTY2WyqP7AwIOUm9FjkFododckmnbUSXzsJPpmICO8sVG1a0bk7q6XPNqBuJv
	NeJgoQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3nf62wm2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 10:32:18 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c6cfd52556so244879385a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 02:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770201137; x=1770805937; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EZVaMLvlgDWhkf7Hi1ntH/HGfqniNLCamW0vWobtXgI=;
        b=JWnCHPzAf3EwoQYOVRe8mqPTR2XbBaKBxGqZcoIJJ19s8eohiBp6UHxWcjDFk525Nc
         HjhF1t0ur7m9vBpuo3XX7fdvswQ1f3vYhfIbCy+zwARihI88uz6XPmK+L2C10olnwQEg
         n7RTUE1YO1zNzWwDm6aCLJTJP4tLo59Bh9yziweo/LWrG5I+YzvyfG6Dm0D7p+0ZvrWL
         GcY+hcA0KE1t/2WRFMx6z1rTNA4UCTcolURUoyIYKC29xNLoD2gG1IoFg5vHSlBMrJPt
         lHwD+MqhyO7soaRSEFM1nMGUA8exHH9I+sZw8UTCK45uUJ55kEz4H3eG9OlNUxlBjvDe
         1KdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770201137; x=1770805937;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EZVaMLvlgDWhkf7Hi1ntH/HGfqniNLCamW0vWobtXgI=;
        b=o2m0RlD5CriHie/2f1PixhqtCgHHuhdmst6tlVH6C6aYtI51KpWbdC1Yddi4AX2G0w
         2PPaeBeCKnXRTkSOrYqKB1d2J8+WON3JAre7EVEroWNyes7MiFPmPlMLqNniFjW7cpzM
         d+hZNZXAAP0wlgWft1IrHmKOW9s5ODVVXslwBcHDg+BQkwYCoMayZYm5ECgz06/eFDqz
         cKnJszKWWAbES6yUxlCMURvfM1tMMSXXE6GLN0Oa/v2I2DYcu1lMUaoNbpGe6EDZckwq
         NNabV4F7RCp+A0nPqIED1xDp8ceacftT9QWUvS7ahIrkxaJub+pHDEmOilLOU4w9L84v
         0o3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXYbkcwI0nlmE/40N5R0l87cE/BgWrD3mlGd2N5UGKif6sPqnSXWnUlIRtrTZkgAKhPh0pPfF2SNDw1@vger.kernel.org
X-Gm-Message-State: AOJu0YysJBi6UMNhYieAzfxiIhQIcLiez/1UFHz7h3lgO5YaWHwbK3U1
	7KLb8mrxBa+MqwiydeBLxdfunZe6+JkYJFWZqqdLs1k85yZT8lRULh/2NhCdslavLZG02dkwKRR
	WYI+EvgpapS3iprl51AssxMMKC2z7BtXgLKw3+3n3uWyV9CooOHEUGixtP52/V2P3
X-Gm-Gg: AZuq6aKUJPcjhlF0fQ97GyUJnsSf/V6QcKncY4gH+k/SSCuYEpKw5DQJcN2+FFd9fXU
	p6i+wzv/zaMTwovYj79szHJtkL2fvCdyOjz361fqSnQ7ITzQuXvRb/KbrnorILjG6vsCCuvJzSl
	8DxevvRQAfino7pTUxAVbIFR4fSIciJMBI7JsHgD6CmmLu3egawd5TBJlLnmcCfG0bdhXG6HPYs
	qOybFu7bsK7NbCiB4fJfVPwIZTCs73fwBZMHTlQsahVbccg6StY3HSpYWdg/0h+iv4UcasO526q
	ZlteP0u11C52G/ysL2U8BuqEIQT0eSCgzpEL35Mgy2NbgaNgLm5K5KjzFNdiEtIZWzekVwE1a1C
	bpeA0MQb/QkQWamHzvSKVehy55AwhxFEkjmzMXiHPv8DdP5G6PQOQ8aPI4/IdpAdCYYfsiwl0Mt
	5cLf6cdpDXEcrCmye3Kp/kLZo=
X-Received: by 2002:a05:620a:3189:b0:8c6:aff3:5a79 with SMTP id af79cd13be357-8ca20523b8dmr626639785a.44.1770201137397;
        Wed, 04 Feb 2026 02:32:17 -0800 (PST)
X-Received: by 2002:a05:620a:3189:b0:8c6:aff3:5a79 with SMTP id af79cd13be357-8ca20523b8dmr626637185a.44.1770201136905;
        Wed, 04 Feb 2026 02:32:16 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e388308adsm562588e87.97.2026.02.04.02.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 02:32:16 -0800 (PST)
Date: Wed, 4 Feb 2026 12:32:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Enable secondary
 USB controller in host mode
Message-ID: <xfl4fir3l7ckh66zok46uot3xd63jptnyb5f3wsw7cok4rtqsh@23vlnfukpoi5>
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
 <20260122092852.887624-5-swati.agarwal@oss.qualcomm.com>
 <63fjxtcmpbpna4cuuis332y3p52b6pvh43gyg6m7u5kiwkb2pb@znwfyet4xlpc>
 <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
 <fycr33dqcosay7ake3nbbeaclhqvynwzixas4u3ocaerpqbu5e@shoibdd663vm>
 <6a982b56-2f4c-441f-acf7-a8e77ea55600@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6a982b56-2f4c-441f-acf7-a8e77ea55600@oss.qualcomm.com>
X-Proofpoint-GUID: UVDpN-f00TFbX4P2z2pFfhoZcwWSjZpB
X-Proofpoint-ORIG-GUID: UVDpN-f00TFbX4P2z2pFfhoZcwWSjZpB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDA3OSBTYWx0ZWRfX8lXkDa5PqY9+
 ly5cxadacm6SkTD6tlhB7gTgz3Z8eLiEMu9+oPlyIhuBNUGG1n4vZoxsruuLDZjsbreULv+zt5M
 cRVnk1+9B0HGVOA/M/zN96XtaBYVGw7DQQdfCu1wkBdQJM81rmLtzYGUvmBCkXEjtjdcbUv/fZx
 k8t8Qcinu85wi3LgBZ6GyVlfs9MztqVVxPdYHiEErcLvxVuBtyrvHemLsNgrxqj21yFePSIvHmk
 dibJAaPB8BykST1IVor5mV8Vmmi4r4RwFM/eFinnIm7bCrZvGqxSfjuvJSAhuBaueSfA80VoQhO
 kUSsE3tQxW2YqPq+xbzhSXYyYGQgQWjae34dbJpqcajMj3iPeFuAlnIJ/zWslWI+PLBas9FfQUS
 h02nmirhscx5vmggMq/DS921iorTgx3baFc1X9HDJMci7GybE4S+osbbCHk2/AdXY34JQdFsnZl
 IA5mNkF5AFqgxtV48+A==
X-Authority-Analysis: v=2.4 cv=doTWylg4 c=1 sm=1 tr=0 ts=69832032 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=qVSwaBYOakyh4oU-HHEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_02,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262589-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email,0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.2:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.47:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3142BE48AF
X-Rspamd-Action: no action

On Wed, Feb 04, 2026 at 11:26:37AM +0530, Krishna Kurapati wrote:
> 
> 
> On 2/4/2026 7:03 AM, Dmitry Baryshkov wrote:
> > On Tue, Jan 27, 2026 at 10:53:46AM +0530, Swati Agarwal wrote:
> > > On Thu, Jan 22, 2026 at 4:02 PM Dmitry Baryshkov
> > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > 
> > > > On Thu, Jan 22, 2026 at 02:58:52PM +0530, Swati Agarwal wrote:
> > > > > Enable secondary USB controller in host mode on lemans EVK Platform.
> > > > > 
> > > > > Secondary USB controller is connected to a Genesys Logic USB HUB GL3590
> > > > > having 4 ports. The ports of hub that are present on lemans EVK standalone
> > > > > board are used as follows:-
> > > > > 1) port-1 is connected to HD3SS3220 Type-C port controller.
> > > > > 2) port-4 is used for the M.2 E key on corekit. Standard core kit uses UART
> > > > > for Bluetooth. This port is to be used only if user optionally replaces the
> > > > > WiFi card with the NFA765 chip which uses USB for Bluetooth.
> > > > > 
> > > > > Remaining 2 ports will become functional when the interface plus mezzanine
> > > > > board is stacked on top of corekit:
> > > > > 
> > > > > 3) port-2 is connected to another hub which is present on the mezz through
> > > > > which 4 type-A ports are connected.
> > > > > 4) port-3 is used for the M.2 B key for a 5G card when the mezz is
> > > > > connected.
> > > > > 
> > > > > Mark the second USB controller as host only capable and add the HD3SS3220
> > > > > Type-C port controller along with Type-c connector for controlling vbus
> > > > > supply.
> > > > > 
> > > > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > > > ---
> > > > >   arch/arm64/boot/dts/qcom/lemans-evk.dts | 208 ++++++++++++++++++++++++
> > > > >   1 file changed, 208 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > index 074a1edd0334..a549f7fe53a1 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > @@ -68,6 +68,45 @@ usb0_con_ss_ep: endpoint {
> > > > >                };
> > > > >        };
> > > > > 
> > > > > +     connector-1 {
> > > > > +             compatible = "usb-c-connector";
> > > > > +             label = "USB1-Type-C";
> > > > > +             data-role = "host";
> > > > > +             power-role = "source";
> > > > > +
> > > > > +             vbus-supply = <&vbus_supply_regulator_1>;
> > > > > +
> > > > > +             ports {
> > > > > +                     #address-cells = <1>;
> > > > > +                     #size-cells = <0>;
> > > > > +
> > > > > +                     port@0 {
> > > > > +                             reg = <0>;
> > > > > +
> > > > > +                             usb1_con_ss_ep: endpoint {
> > > > 
> > > > This contradicts USB-C connector bindings. Why?
> > > > 
> > > > > +                                     remote-endpoint = <&hd3ss3220_1_in_ep>;
> > > > > +                             };
> > > > > +                     };
> > > > > +
> > > > > +                     port@1 {
> > > > > +                             reg = <1>;
> > > > > +
> > > > > +                             usb1_hs_in: endpoint {
> > > > > +                                     remote-endpoint = <&usb_hub_2_1>;
> > > > > +                             };
> > > > > +
> > > > > +                     };
> > > > > +
> > > > > +                     port@2 {
> > > > > +                             reg = <2>;
> > > > > +
> > > > > +                             usb1_ss_in: endpoint {
> > > > 
> > > > port@2 is for the SBU signals. It can't be connected to the hub.
> > > > 
> > > > > +                                     remote-endpoint = <&usb_hub_3_1>;
> > > > > +                             };
> > > > > +                     };
> > > > > +             };
> > > > > +     };
> > > > > +
> > > > >        edp0-connector {
> > > > >                compatible = "dp-connector";
> > > > >                label = "EDP0";
> > > > > @@ -141,6 +180,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
> > > > >                enable-active-high;
> > > > >        };
> > > > > 
> > > > > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > > > > +             compatible = "regulator-fixed";
> > > > > +             regulator-name = "vbus_supply_1";
> > > > > +             gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
> > > > > +             regulator-min-microvolt = <5000000>;
> > > > > +             regulator-max-microvolt = <5000000>;
> > > > > +             regulator-boot-on;
> > > > > +             enable-active-high;
> > > > > +     };
> > > > > +
> > > > >        vmmc_sdc: regulator-vmmc-sdc {
> > > > >                compatible = "regulator-fixed";
> > > > > 
> > > > > @@ -536,6 +585,39 @@ hd3ss3220_0_out_ep: endpoint {
> > > > >                        };
> > > > >                };
> > > > >        };
> > > > > +
> > > > > +     usb-typec@47 {
> > > > > +             compatible = "ti,hd3ss3220";
> > > > > +             reg = <0x47>;
> > > > > +
> > > > > +             interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
> > > > > +
> > > > > +             id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > > > > +
> > > > > +             pinctrl-0 = <&usb1_id>, <&usb1_intr>;
> > > > > +             pinctrl-names = "default";
> > > > > +
> > > > > +             ports {
> > > > > +                     #address-cells = <1>;
> > > > > +                     #size-cells = <0>;
> > > > > +
> > > > > +                     port@0 {
> > > > > +                             reg = <0>;
> > > > > +
> > > > > +                             hd3ss3220_1_in_ep: endpoint {
> > > > > +                                     remote-endpoint = <&usb1_con_ss_ep>;
> > > > > +                             };
> > > > > +                     };
> > > > > +
> > > > > +                     port@1 {
> > > > > +                             reg = <1>;
> > > > > +
> > > > > +                             hd3ss3220_1_out_ep: endpoint {
> > > > > +                             };
> > > > 
> > > > Why is this port disconnected? It it really N/C?
> > > 
> > > Hi Dmitry,
> > > 
> > > Sorry for the confusion, Can we do it as follows:
> > > 
> > > hub:                    Hd3ss3220   typec-connector
> > > 
> > > usb_hub_2_1 <-> port@1       port@1 <-> empty
> > > usb_hub_3_1 <-> port@2       port@2 <-> <empty>
> > >                               port@0 <-> port@0
> > > 
> > 
> > You still missed the _why_. Why port@1 of HD3SS3220 is not connected?
> > 
> 
> There are no remote endpoints added in dwc3 node. Since we are making
> dr_mode host. Hence keeping this remore endpoint empty.

How is the link between HD3SS3220 and Type-C affected by the DWC3? What
does port@1 of it represent? Do we have SS lanes between HD3SS3220 and
the connector?

-- 
With best wishes
Dmitry

