Return-Path: <devicetree+bounces-275488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MFZBOFZPtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:54:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C51428859B
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:54:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 438EB3037F2A
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 17:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1F193D6460;
	Fri, 13 Mar 2026 17:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ic6AVXDz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="J+8mjfQy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEE93D5651
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:54:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773424445; cv=none; b=Yec5WjKovkKZoOAIQY21iqOp2wqBeNmJK/MrJuNqA6S3FsBqeaaE9aVtCeMc6HPaKsXb7OJQuuGKRp1e9Sqv11FK8D/+tTtrKObfF+j3XUqJdG8uFOynmBRA6kwSNSj1LXlgok8tr0h0zQQF5vaREzyu9F5Y3jsY3VDrY8dGZrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773424445; c=relaxed/simple;
	bh=4dlFVjRh0mtnDp1I89xT4VqE7LF2tQ3GlIUptZ2HwMs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m/xBH/uRIOf0gSt5djckFvzGc9PUrzK6+Y7bI9Pz01orsJDfh+co8U7V5jIrOWmoh9duJ+xeKqlue06HjcbnSUmT7vchDQRjxHCXeMvcwpicWHvlE2wwLbodyqh9mtIX4yIcN0EJ+OvXGVitMy5DtVRUbHeSc0hV3VvTHIvXboI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ic6AVXDz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=J+8mjfQy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62DGXGFT3906612
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:54:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=A2JMDl5+4IeW2jZHW1dvhML5
	w4gEeF0P7nPpcImmvmY=; b=ic6AVXDzHBaRvHMrNSV6ui53DlR6vdM8hJyTLtBs
	CbXpGbjM4O7Fdr7cBagW0XcCXfOyi9Lud2pKXYOfPxI7FhzeUIf+k0U1tkr/I202
	+jWrOFaKhRJLEOjnBmmae6EAnoFsMdJTRzYhG2y/l4fHPoQGHOhfBF2bY9dk97+5
	K9/uETS3Xu2jSUa1pYGgU5GUQRIChjTqCI75PHW3MngIciotJgSTedcqJCTElq1x
	ND8Sv8rzNofNGNp5iI2EiDazYETCHjtUUlBs+rxknYNbvUgCrHNnzl9hEFx4d1NN
	n+TsNMnb7l8FUKNG2IBlSu16pWV/KxryfZTJncEIH75WsA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvfqs9sa9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 17:54:02 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81c571a5so1424083585a.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773424442; x=1774029242; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=A2JMDl5+4IeW2jZHW1dvhML5w4gEeF0P7nPpcImmvmY=;
        b=J+8mjfQypErQ+5pw5JoRw74yurCGXMu1et6T6L1NLd8A2sU1JDuXp333mIIDh7DZi3
         Y+bVG00oljPfLKl6yJEv5JxqxQX81yXAuI5lGji9PwmYVpZuR4UCa9L6kmKjTPkMoMoL
         y5fvVbVRJi8IDWIrMXdYp+TGYMPVAXVU/CO38lQIZ+TepVN4tO9bXfnamqBcNBrn1sP6
         zM66sTiyTcncOL1SQ8J0bGMKfLxJjseD8cMmryG1PjIWAURikrj5HuR82kmRx0Aqy7G0
         C85fctdpT1GfDLVKmepy3IILoMdZU4Kppw/UTKonZCG5QLTziur6Na8+1aBWpX15wKtL
         9CfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773424442; x=1774029242;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A2JMDl5+4IeW2jZHW1dvhML5w4gEeF0P7nPpcImmvmY=;
        b=JiEOC0G4gmS//VDQdvKimyw/VAyPRLY0N0bhzagYpi5NA/LUosFqLQIyU6aOuu3Vxc
         2IEkA09hEYgn4qMokrrhq9JTljEqVxgPJmUTzg7S996SMAyTU2PJduQ4NPWkpCZsklrK
         6l9R1JG045OcMLsVQmY+XEZ0qs5qAcW3cDwhckUAydIcKSNHY/4lnY06C0GAYEqbmeQu
         MtmDCUWn/SAZwzAkKwntHMc/CKKAeDA4N6IOkv15aLotYnMGWvuXlxDARvVdNtFJPOlF
         Vl9V5OzPnIXRridEqGcOxH1nJJVwFVFZHMd92pbnqC4WaFo6bqt5sIKBCViEcLIdLe7N
         TJjw==
X-Forwarded-Encrypted: i=1; AJvYcCWIDa4IwTlgzY4Zu+YANzOwBYc9Ko3byyieQO4onSSddzNNKzDFUpZa729b+IPvmgOTPcroMFOK1Vdk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+kasv+gSC76hUuSK821VVbEZj2LObDWjuzN/ZTArDFyZxhjkQ
	FD9uBYo67ExTLi8D06d3JVSXYxdApbHN3IEzUn4lJ5k9Qi1YO4OdD2njSCKDQfDcbBSiIlPbLfO
	/XZZ7PT1t5kXUqvVXp/AjK/sj19aEYblY9gAku0uU4865g06WIxndPUntr04ZzcX9
X-Gm-Gg: ATEYQzx4Nv9P9iAez5ihjKdhES9Z0DSho9snbt/FzdTf9ocQywgkwrqTIlnGewm32GR
	w2MSNVpScNWm1R3rfg9Uwhbh2WSGO2VbqLvCZxGwwhfKvV5B1eJP5eGcAqOjhyuYq/dGQBcd+Os
	B8XgtyvwtrEkNhkqlZ4pofZRNoWel663seGTZ+aMr0N6nADkUD1sD2fhDHMpC90F/ywbdmjhoKG
	NUsG4iL3BN66V/Rc7ryxNdjUHWoIv9OySh3olmIqdoJQDm0kwtP63l7iDduVjal8lNVHFztBRWg
	7yavka7sHb5w054oAIT3gJwF535aZD5nxEBcaI3AEXiFGz6zD/YT/LbSkWbx9DPk9RXXjJMrhHF
	caeAXG6aT8o7C8tpQsPOuB2+0uPhuwbH7UiZgGcWSSuPCfcpEnTXzNyleOAd/RFl0g+BZMyfYNX
	EFSPk/Plb+rSdWR7p/n/69giR5uji2l5m4p4I=
X-Received: by 2002:a05:620a:1990:b0:8cd:8569:b94d with SMTP id af79cd13be357-8cdb5b47bc2mr584460885a.51.1773424441849;
        Fri, 13 Mar 2026 10:54:01 -0700 (PDT)
X-Received: by 2002:a05:620a:1990:b0:8cd:8569:b94d with SMTP id af79cd13be357-8cdb5b47bc2mr584380885a.51.1773424427877;
        Fri, 13 Mar 2026 10:53:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a15635786bsm1619901e87.61.2026.03.13.10.53.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 10:53:45 -0700 (PDT)
Date: Fri, 13 Mar 2026 19:53:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Umang Chheda <umang.chheda@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom:
 qcs6490-rb3gen2-industrial-mezzanine: Add model string
Message-ID: <gmeo7kiryfh3qxspzidpwknxgmxqeqr6on2glrjj4tioh6apv5@p6rxe3jw2rkm>
References: <20260309121936.1289615-1-umang.chheda@oss.qualcomm.com>
 <rdglzhmncexfcvec5hyenj7jx3m5hsphjlxsaeq2zhi4z4arml@bjeqghbbaoa2>
 <64f43d77-7c09-453e-8d7b-b4e0e5f05598@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <64f43d77-7c09-453e-8d7b-b4e0e5f05598@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: RxyxKbtTuOZAtvEjdcZooFJiRcDyQFHN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDE0MiBTYWx0ZWRfXx2eIvTaaJnwo
 04ccTHoTyMJ7n/a+qaag0wHn+QuwOvQjhHn4mw3kA5X9C7Hr6iOK+NZ7vjlEGPJgxAm2mlUATab
 exVZ+b0WjwNPtTRv3arTISe79E2mU9LwyG3nyTTa+/KtF2hBWb7t9E2uNa52F84LdiEkXjyinSk
 9vqVyO8NTG9h6pTACwJJgnQny3ecK4GiFv/8g9AZQ/M17jUU/fnmY7xAPh3newFX47kgiFwmpu9
 WYqyQ6w2EZ2J8IPemDjza6EZqvuy0aVD2JnSo9/NsUZ6SIiX87zWa88FwKWCdq0UF1m2w0lifpi
 76eAndzsiHA1ZkT8VhaA1QGLGcKKIJGg3wOIbk7VzmUvFQoiA+Qdh7sle8pNhNKCFUGmO2TZtNR
 gwfFSZmXJbyas6ncbPl6LPnl4lvfVnMoMmuEfkiXc4nARnGnfF+U7xs2heAJeSxmz4y7WuZZEO8
 CEWLmG5m3fvzaaiImtA==
X-Proofpoint-GUID: RxyxKbtTuOZAtvEjdcZooFJiRcDyQFHN
X-Authority-Analysis: v=2.4 cv=GoNPO01C c=1 sm=1 tr=0 ts=69b44f3a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=fMGUnWhMUi1KRUnt1gIA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_03,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130142
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:dkim,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275488-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5C51428859B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 10, 2026 at 02:09:58PM +0530, Umang Chheda wrote:
> Hello Dmitry,
> 
> On 3/10/2026 2:07 AM, Dmitry Baryshkov wrote:
> > On Mon, Mar 09, 2026 at 05:49:35PM +0530, Umang Chheda wrote:
> >> The RB3 Gen2 Industrial mezzanine DT file lacks a "model" property,
> >> resulting in the hardware always being reported as the "Robotics RB3gen2".
> >> This prevents applications and user-space tooling from distinguishing
> >> the Industrial mezzanine Kit from other RB3Gen2 variants.
> >>
> >> To ensure consistent identification across all RB3 Gen2 mezzanines,
> >> add the appropriate model string.
> >>
> >> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
> >> ---
> >>  .../boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso   | 4 ++++
> >>  1 file changed, 4 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> >> index 619a42b5ef48..7d6e425dae89 100644
> >> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> >> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> >> @@ -8,6 +8,10 @@
> >>  #include <dt-bindings/clock/qcom,gcc-sc7280.h>
> >>  #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> >>
> >> +&{/} {
> >> +	model = "Qualcomm Technologies, Inc. QCS6490 RB3gen2 Industrial Mezzanine";
> > So, what happens if I combine Industrial and Vision mezzanines?
> 
> H/W does not support to connect both Industrial and vision mezzanine at same time - only single mezzanine can be
> 
> connected at a given point in time - hence probably the above scenario would never occur.

Industrial mezzanine has all LS and HS connectors, so it is possible to
stack Vision mezz on top of the industrial one.

-- 
With best wishes
Dmitry

