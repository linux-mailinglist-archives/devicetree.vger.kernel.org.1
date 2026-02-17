Return-Path: <devicetree+bounces-265982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKZmH8salGn0/wEAu9opvQ
	(envelope-from <devicetree+bounces-265982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:37:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFC814936A
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:37:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5864F3005AB2
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 07:37:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 501F92BDC2C;
	Tue, 17 Feb 2026 07:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lJggXVMV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tl8b0lxG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3879E17993
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771313864; cv=none; b=S5P9m1r23l3y9GhY90wOKSwLGoV0EYijoMEI8B9On7oOwaP2et2/xP8JavuB08iZmqRtNMK81ukw7IqD9CaoJY/TTBsKSMNGc3wMryL/OAWCC/m09D4lPH+A+3bku4ny/8Evs+zIc0C30oef0taq1YF/b/ZVu/DgcO9USwnui7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771313864; c=relaxed/simple;
	bh=pkL7neZhdXiS6911Oghk8JkjG2VoWdHSi19S+R2hXDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LTe1CJNmPQGdXqod33jr04QOS+mn43yTlV67wlqU7bmf8DSTOivCnywaYoip+WNhOhU4ugQMU4WvO7GRuuYkVyVvSZzMc/QmDx6tfT/C6NtNZDq07w9k2bNVn7sbsiebO6IDXDyino4RnLqDxxDyzTPgX1MAg2L0MAs0yW0cVWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lJggXVMV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tl8b0lxG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H54m6I2112094
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:37:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WPYHukQZC9sgqwSj6rGDXxrk
	OZMyrev9mk3G1zXEtnA=; b=lJggXVMVdBbzgMdMGVZlITZDjtQ2jKWhiVYET+Uy
	7gH5bNu3RTc4W1rXgYdrCJ6q7MYcdsoLGTBGF9Vtt65gcyqcKv+YUTQ0DJT8+vyM
	XhVZHendZZM5A6kWM1JJdC5qUOp03AhErcYKfqztopmGQPd9NmtY+lO9XWGDCkAj
	yoth2ngXl0pk0oYARJTJm8Z5DsguNGiBfvH+Z+5hiq7XhiF1J2AD3tF+TUCiaDns
	a52C59HjNZ0yJGWPMqOHxMdsAOmAdm97xRqShzEyhevlKq4R8Q3xbPEVeyp67olE
	U7+V/sOKzTxBr7Fdn1/Ezg6rUOr2s0v9Jtt3um05aL5kNA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cchv4g9k3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 07:37:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c7166a4643so2495731085a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 23:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771313861; x=1771918661; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WPYHukQZC9sgqwSj6rGDXxrkOZMyrev9mk3G1zXEtnA=;
        b=Tl8b0lxGVMLNb0eDXjoBVGD0tURqPJBEkL1muWFOIIcl3XvNeB1KstU13HJuCnu+Nb
         tYmR2x2tvOtB1zw3gSdpKAeqjr6+5doOV7gjar7ZaNJJplkb01KDan7QVspR4HZLb2Ap
         KoJwx8hfwVcfPjKiyb6ux/hvVvEHEb28yTpv8UzNwEpyg8Dtz7ZrxLaXAbkzeHvDdKHd
         ERSsOGb9GriYS5M1XoYr4qRGWzDWIl3OZL38w/a1WbFhk+qnqjZofRUjUrxhOxvyvt5L
         vVDF1W0iWgnFLQZ5UxeW2rigYMkmSpvS5zvoHuFD2Y8HB2gcVFVCy4mgrYyhU16u4QnD
         FDzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771313861; x=1771918661;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WPYHukQZC9sgqwSj6rGDXxrkOZMyrev9mk3G1zXEtnA=;
        b=C7aTpOw7nMdFWi6HAxTmbkBL2bszsMcLI6AzplCVJukCIcHGmGS2sk2GMdm2pZZtbr
         x1pl00ZH8rklAUHYUxeauRZjmZc3wo6qDBKc81OZCeVIayhXQWQyvTH3tV5i/RjQIRpG
         PM0T5/ds3j7rg3EHwwVP6aWoq5CA1Tw3VrIUowcswNKInEivI0SGEG9QPyBtl3uC8ym7
         nLvu5TT/L2LSkNA9K4gXJxVAeiifvPoITaali1u72MG0AFSKj101bTfeIxf4hriGkfKa
         ZaqJW/qQWt7Q9y1df3wCJoHyvFbNLEAalofBjqf3cV1CwOp6C+mohkw/zhweYObx6ODn
         jHuA==
X-Forwarded-Encrypted: i=1; AJvYcCW9mJiVDwmLOdXy0K2HHkU6ajdicXIkb0/LdN3uE5ruRALxslrsePCO+KZ6SkNiBGR+PRuZ0nmv5xur@vger.kernel.org
X-Gm-Message-State: AOJu0YzzKUlfzgS4RzfBnfkTvEUyDErp1bM+X42u6NyCJlEX5W82hN1l
	iA2JoNTFoPw6xj+j/utlwxlzRXcHEKVvY107gg5AU4HL09GjsUW6H/z9wI2vsSb3J3f+is8MSD9
	2zVYCnx0UvWV5WaD3wpCd+Ra/Mas+QLJBRYaJRQpVBkKQAZjcQj1uiNb4wUC61JeX
X-Gm-Gg: AZuq6aIdGDIUoTTGl7Rx8rX0Qgfc3U//kKU86x0HtANDSiMbRg4Hzd1hsOz+hZv6JBS
	m7nUJLo0qQP4Xs/dhuktAh4qE3V7kGzxx08EEriKHf2Wp848X3xpuRHPWWXqCerh8wF5PQsyiZX
	ftaM9m6CW3+6jxP1UT/9P6GhaWAhBtj+XLQFu9i0Ypq+xQiT/BgdFuVfeWFXS1b6wtA6N4TU2Rt
	qFtFzBoNCDxsWijfSnn4/2EQA09gQJBpAIRNvUtjPlvjhvUsqwrywEruUvCAuF2fX7aWq3+GasQ
	xD5Ze2uBnfAnONDyTqc17ySGssDm0ET85s4jLNM6EA4057LYG1WVsUwEPa/jtB4bSWURqt/hz7g
	gQaGI2Kwvb8plAh9HqIxf+ANvO56t6vyRaUrHeVJ2Hr8tP+dNBbOK1XX3VfwhXqP1fgI0aWUy0p
	cI1Ru8gKThl4nMpfBQ0QcQDnDi1XNbYfEj+ms=
X-Received: by 2002:a05:620a:698b:b0:8ca:4438:b8f4 with SMTP id af79cd13be357-8cb42461865mr1581137485a.67.1771313861538;
        Mon, 16 Feb 2026 23:37:41 -0800 (PST)
X-Received: by 2002:a05:620a:698b:b0:8ca:4438:b8f4 with SMTP id af79cd13be357-8cb42461865mr1581136785a.67.1771313861138;
        Mon, 16 Feb 2026 23:37:41 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e5f56a476sm3699312e87.32.2026.02.16.23.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 23:37:40 -0800 (PST)
Date: Tue, 17 Feb 2026 09:37:38 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Val Packett <val@packett.cool>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Adam Skladowski <a39.skl@gmail.com>, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sm6115: Add missing MDSS core reset
Message-ID: <s3ym5ua3ppi7qmkzrlxmlzhfnikeszyubmrsrxfyormi4d35c6@5v63tfvt3wmr>
References: <20260216233600.13098-2-val@packett.cool>
 <20260216233600.13098-7-val@packett.cool>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260216233600.13098-7-val@packett.cool>
X-Authority-Analysis: v=2.4 cv=eYAwvrEH c=1 sm=1 tr=0 ts=69941ac6 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=NQfNVa4L0IZK2tGiTpgA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA2MiBTYWx0ZWRfX8oyUS+3+LNdf
 jKdVJ9NtWdYL3A32L9AxIiBUyE75K+CjWIvISDMQYYNP8UlssC3fEZVhGB56QukSEV7hDPeb2B4
 2hNsSKGBVKn1oCSAdvyfecu2wTZhquP8tEZIZKBGvOZdQti+v6ZhLsgfeRRZKf5CT/UZR0R6BlX
 9wnaARG48SJoUwb3rqqxAYYaVw8H9qy28dSzgJPHejBvSBsqtyhy3aRPJD9wVsLa5Ja6h0XFrE+
 z9SVaxSlgzggYFeG3vi3yP/j3oy4N9GrwzcfkWeq1sae32j9uuJF6Hr0yzqB1aVKZpuJifksbfS
 8nJBlYfcTSyZs5m+6Q5ofDKmptCmqCvP1x+GhszP8x465tpupXZSJwJqa2bBJ8P1qNyaLWFlqJN
 L/pYkt3reL8al1IelzLbTiytn7SPeCaBfEUup/n2XkwRv1sBGO9h8SVGBl2qXkvTZbIrgtMjZ6Q
 UnF7EiC302gHY70m7TQ==
X-Proofpoint-GUID: Ozozcmagc_sGOrxv7GDdfjKoPvxMmi42
X-Proofpoint-ORIG-GUID: Ozozcmagc_sGOrxv7GDdfjKoPvxMmi42
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265982-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.sr.ht];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim,packett.cool:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EBFC814936A
X-Rspamd-Action: no action

On Mon, Feb 16, 2026 at 08:25:23PM -0300, Val Packett wrote:
> To make sure the display subsystem starts in a predictable state, we
> need to reset it. Otherwise, unpredictable issues can happen, e.g.
> on the motorola-guamp smartphone DSI would not transmit anything.
> 
> Wire up the reset to fix.
> 
> Fixes: 705e50427d81 ("arm64: dts: qcom: sm6115: Add mdss/dpu node")
> Signed-off-by: Val Packett <val@packett.cool>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

