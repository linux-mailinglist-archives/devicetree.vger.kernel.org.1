Return-Path: <devicetree+bounces-245328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F93CAF2FE
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 08:44:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 62D87300EDD5
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 07:44:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36AF286D73;
	Tue,  9 Dec 2025 07:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SwwDrLUb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JSRd8sIF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686EB287510
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 07:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765266250; cv=none; b=Fv0JbXRcjetvNziBC/bNhi8td8srusr04tUGHtm3kvWPgIlE9fTPf7qoaxmTUoLPyAEmcnJM5VirN8/DIHgxNRBoWIid/NKbOo7wlUYECPMn10Mzygzx5mP0MbTTnC5/yy5nb872xKKNliwFQ5GsRKfoQCIPDQUZ9JHGjsHjFXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765266250; c=relaxed/simple;
	bh=zDXpgqbVwhDYRwR0m9V5DZzKN2j825xmBmpLSfLKVes=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hz2AD0stYQqDTZVIJuHdDy7BdSabcC9/yi7WE963DGGTuvPSIwD8c2EKUEwFh5sOXLic57gZaG/9h+1xnBF+jzZFTxA6mbzk7n03yW+z2+6uv7kv4jAqt+ld/ZmMZzJn71kC8cyVlXbeSNlAG9MSnUocEFBX+ygLCHJ7+hfZuAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SwwDrLUb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JSRd8sIF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B91Ifrh2441844
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 07:44:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RPqPoh3bGeipUypAqmY/zmP3H3P+oHdZsuyQ8qZRFqI=; b=SwwDrLUb2jp3+Ko6
	b2KlRiLqDIQAB2H++cM6gd/EGVahQrBXJFubH+vTvSZRgliMwlxPEM0WIDNZyHKI
	rDWySEs3NMsicozDXuO476W7AtW773joPdO0UqOkw4IgCyhQW7xyPq5idV4tWysP
	WJJzYQyo2tY78D5Riy29Nd+trxuW6/rQvTKE9T2N12zdxmztndXTEcZPhFxwP72v
	0k5QadVOw6kdjpaWdEHhKbZ8V7JNgIm8oADwehg/CcBqmKtMKmnPTdTyx1Y1OX50
	6ss7kYFc4BOASPJUV5B1+A0raikDuiH/gn5M10xIJ8tGkuzUORNNdY6CbSv3D4BR
	rMalMA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axa0brysr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:44:05 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b6a9c80038so278375785a.2
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 23:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765266244; x=1765871044; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RPqPoh3bGeipUypAqmY/zmP3H3P+oHdZsuyQ8qZRFqI=;
        b=JSRd8sIFX37rHTp/E4VES0+XKviaPiCH7lVpBve+8m0AnZ7GNJ8GFlPrcmbp0hWYAL
         74nXd5go3vjSKDF8ZIUQX/2hM4b1WVdHVGZ1XnBoxj4wQPRM5RyGoVglO2jLPWZwJxwD
         6bF5PQlE9o4UNh1WnZJVyzddJ0uimVOttPkVctYdEUUtKk411PSac0GVP83+d6s4TKyI
         BtuRTNnKz0gjWtEFQ2MQuXJNr5DRDqJV7wp9yFXRT+oBxSnI8aRoUluVuFnIZdmEYOGC
         7b05qVXpHc8tuygWkxJUnSjYZ/CNkUov2FyofyhhaFUSO20B8TdXevrTAFqMDASGWQm3
         gayA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765266244; x=1765871044;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RPqPoh3bGeipUypAqmY/zmP3H3P+oHdZsuyQ8qZRFqI=;
        b=cE+lq4cyvzPcmFsJXcCmBz15S8hs7L3UB5qc0oZQ1/aIMx+IpRf0kt5Fzb4JjnLQh4
         M94fUwwDqPbFaPg9DqaC3pvepFM7cX2XRQECO0rLJNJOV0FzL8anUqABLbfNj0RaB0uv
         eGcPdoWOPOFxyyncxWgp5aE0RCnoyTx/c0OMv3sHJVQlKbpRWl84V8L0sptsJKRoZGhJ
         3+0gtNK8/2fC/RvPFbU/fXeW3c1ECvcTSdVFmcyVqkgOX0XwD/CIPRHN0ZewgMEPzYh0
         qn3pfFoWmKgNeUouXUwfQKVLfwDgCTEMCp3onPNO8jM9PddQ8ayP6MZUaH41w6xu/sPJ
         ofpA==
X-Forwarded-Encrypted: i=1; AJvYcCU6cPQ1+xe565qAspgCB1DBMHtg3n3nttfJaV4rsN6d/4SyOYgAkRgPzrl14GgV9WTsb154UHS05X+B@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4FivPQv3Lp2KtxB80WDvKwVb002D52185G6JZV8+Dmg1Nmd47
	a/7/MmRk4I6/a/J6FvydeJyvOG9uD/XuYSY3PXzbm3t2azFkfDGgFiGXWzkP2BwiJQrJW3HL9ip
	dxTR1VbELncD6IxjCj2ugMPT1unPTNXczhicCm1A1Z/VArZvtKa8lN+r1mR58+FxFwiHDo3pG
X-Gm-Gg: ASbGncsLgs/ELvrKgHbS94nwwIOE3OAnUAohml+wvxV6eRuYnbtX+TsVCgC1ucdZwn9
	JIGS+aJZ/uzTufDYDupNunq/iK2lah15CgX4Pg68XFqWFx8hK0cpZqmypAQ5FsOgTnY51a5uIyY
	LhnoYxVqXUzoXifYPZapk2O4hw0pTqvXv1LDE7CgxUsZJMfhVB96QqdWCtY++Lxbcc+EdHE3jyN
	cU/LV6WALTKibAwvb6V/JezCS6Xau7GsgES/KmkU1BtMv9oulBTsSGbXjnFH5OHLCHBv2DttSD2
	/uTGmwJSugQ1qCPjXZbtULYk+Xpz8+WzLzlxgfXRhK661tp+I0JWExRfqi13f5ORDp/taYKbruK
	ijZmmnPU4OEM8JeLXnB+q1Mk9PidS4fVz6kBYufM/X/C2SkN9myNvQLbZ1coI6VFiUOwdElFGQu
	x886dF8CmK98KxIq3XxldWXGA=
X-Received: by 2002:a05:620a:40c2:b0:8b2:e469:39e8 with SMTP id af79cd13be357-8b6a23c1277mr1351507385a.42.1765266244301;
        Mon, 08 Dec 2025 23:44:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhNTu0yeccYt7q5e4rlt5XIVUiYVt0N2xZWOwHqUB7Yb4/Br6FrxWTShDjyGL4WfRKKI32yg==
X-Received: by 2002:a05:620a:40c2:b0:8b2:e469:39e8 with SMTP id af79cd13be357-8b6a23c1277mr1351504885a.42.1765266243721;
        Mon, 08 Dec 2025 23:44:03 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c32692sm4817005e87.102.2025.12.08.23.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 23:44:03 -0800 (PST)
Date: Tue, 9 Dec 2025 09:44:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        andersson@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
        robh@kernel.org, konradybcio@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Add host mode support for
 USB1 controller
Message-ID: <yjjfrm5qhcviq7gajgvacghmzcdmwgrnzhhhxdttsdthepkxpe@5e57qtzw3mtj>
References: <20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com>
 <ffd6dc9a-372d-4db9-9c2e-92f126cb5ebe@oss.qualcomm.com>
 <49ecd190-1aee-42d9-9e6b-c155170aa38b@oss.qualcomm.com>
 <638f4184-b582-4a48-ad63-7c1fd2db492f@oss.qualcomm.com>
 <9937db19-de90-459f-844d-bce60abe9f7b@oss.qualcomm.com>
 <3476de25-f0e7-48f1-8bec-3888db2f1fc9@oss.qualcomm.com>
 <af3f57a1-8a9d-4b00-8c0b-f6fc6033609e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <af3f57a1-8a9d-4b00-8c0b-f6fc6033609e@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDA1NyBTYWx0ZWRfX3xjqQ77qGMrx
 I84zazFHGgMqhLyEgKw3PgobVi+nHWvaXfrdERw34kGTSm9HM2YeAgw5tcLqm86FAJSUeEcJJx/
 lYRgpZJObqIP0wqArXv8JrTLAEV3qbP+kJbN9xIFnlkMwzYh6LTL0r/gX5jCaYf/sXg+vI81NF0
 gZT8kEnjvNtUi3Y4IVPbNyVOZEP18oOkII72LMjV+7rdTNNSrSQSt8+wqUVksi91qoSC6ndpLvO
 5/7XvvCH6J/cyPbIkvXpkK26treF08nN5haEA6SGEEDqpWrpsWLcTvmLxZcK7431Tde767NB/tT
 iQygW15VcblQU559FzRL4BXpKIX2FbEoTlk1ZdaMspz/lRElUWtUkdDmzVILnafs+JzbnFq4ClE
 o0aPUfNNUH8MAV43ej649Kv0ZGv2YQ==
X-Authority-Analysis: v=2.4 cv=JqL8bc4C c=1 sm=1 tr=0 ts=6937d345 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=__yLTeluaiGtfMF3pcoA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: WNNorGLKkqf_PA5vIcuZQnZ1rmg9RLBw
X-Proofpoint-ORIG-GUID: WNNorGLKkqf_PA5vIcuZQnZ1rmg9RLBw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_01,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 impostorscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 adultscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090057

On Tue, Dec 09, 2025 at 11:33:52AM +0530, Swati Agarwal wrote:
> 
> 
> On 12/8/2025 10:12 PM, Konrad Dybcio wrote:
> > On 12/8/25 11:49 AM, Swati Agarwal wrote:
> >> Hi,
> >>
> >>
> >> On 12/3/2025 5:17 PM, Konrad Dybcio wrote:
> >>> On 12/3/25 12:41 PM, Krishna Kurapati wrote:
> >>>>
> >>>>
> >>>> On 12/3/2025 4:59 PM, Konrad Dybcio wrote:
> >>>>> On 12/3/25 3:42 AM, Swati Agarwal wrote:
> >>>>>> Enable Host mode support for USB1 controller on EVK Platform.
> >>>>>>
> >>>>>> For secondary USB Typec port, there is a genesys USB HUB sitting in between
> >>>>>> SOC and HD3SS3220 Type-C port controller and SS lines run from the SoC
> >>>>>> through the hub to the Port controller. Mark the second USB controller as
> >>>>>> host only capable.
> >>>>>>
> >>>>>> Added HD3SS3220 Type-C port controller along with Type-c connector for
> >>>>>> controlling vbus supply.
> >>>>>>
> >>>>>> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> >>>>>> ---
> >>>
> >>> [...]
> >>>
> >>>>>> +                hd3ss3220_47_in_ep: endpoint {
> >>>>>
> >>>>> How about rename the other one to hd3ss3220_0 and name this one hd3ss322_1?
> >>>>> _47 doesn't really tell us anything and may re-appear if there's another
> >>>>> instance of this IC on another I2C bus
> >>
> >> Thanks Konrad and Dmitry for the review.
> >> For addressing this renaming for USB0 controller, shall i keep a separate patch and should i address in same DT patch for USB1?>>>
> > 
> > Separate patch, please
> > 
> >>>>
> >>>> ACK. Can we rename them as "usb-typec_1" and "usb_typec_2" ?
> >>>> Krzysztof suggested to use generic names and hence we used "usb-typec" instead of hd3ss3220.
> >>>
> >>> The generic names rule only applies to node names (text before '@'),
> >>> the labels are generally only expected to "make overall sense", I think
> >>>
> >>>>>> +&usb_1 {
> >>>>>> +    dr_mode = "host";
> >>>>>
> >>>>> The connector states it's a dual-role data and power device. Is there any
> >>>>> reason to keep this in host-only mode?
> >>>>>
> >>>>
> >>>> As mentioned in commit text, there is a onboard hub sitting between SoC and the HD3SS3220 port controller. Hence device mode can't be used. This was the reason we left the above port nodes empty since we can't connect them to port nodes of controller.
> >>>
> >>> It would have helped if I had paid more attention to that message then..
> >>>
> >>>> Can we mark the connector as host only and remove the empty endpoints ? Would that we sufficient ?
> >>>
> >>> The connector should definitely be marked host-only, but the endpoints should
> >>> still reflect the physical connectivity.
> >>>
> >>> If I understood your case properly, this is analogous to what &usb2_2_dwc3
> >>> does in arch/arm64/boot/dts/qcom/sdm850-lenovo-yoga-c630.dts - see Commit
> >>> c02716951e66 ("arm64: dts: qcom: sdm850-lenovo-yoga-c630: add routing for
> >>> second USB connector")
> >>
> >> For adding, onboard hub which is GL3590 in DT, it requires adding SS hub bindings in genesys,gl850g.yaml.
> >> My plan is to first submit the binding patch and then follow up with this DT patch on top of it.
> > 
> > There's already *some* SS hub described in there - what needs updating?
> Genesys hub used here has PID 0610 for HS hub and 0625 for SS hub. HS hub PID is available but SS hub PID not available. 
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml?h=next-20251209

Please add it as a part of the series. There is no need to artificially
fragment the patch series.

> 
> Regards,
> Swati
> 

-- 
With best wishes
Dmitry

