Return-Path: <devicetree+bounces-306521-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WdKsIGGzIGp66wAAu9opvQ
	(envelope-from <devicetree+bounces-306521-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 01:06:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E98E563BBA9
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 01:06:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=CyaQWLGn;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=P4aFDSn1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306521-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306521-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B0648300B56B
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 23:06:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D84C44DC532;
	Wed,  3 Jun 2026 23:06:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DBD24DC523
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 23:06:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780527965; cv=none; b=AdyneX/XyPqHF2WNXdPrk4UxonIK4A8ZBcH3uLxS2TAlWYE/1fNK/Uya8Fw43qNGbLdWAvvbS2puL5bEhvP1pW6OkA2Y3kPkYe7BODZnA/8rOmhtP6jXFCWmM3VYqytV50Ip8kVUFyCba9YgUvUxl/1DutFASRAdg+uDE9ce/eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780527965; c=relaxed/simple;
	bh=DvqM6O+dyYTLZ01exqPhdqzx/bR/VnVcf6GbdXraF2o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YtOxYSgTT7g1SZDiYoKZBLU8PgwnvFASPH4qQyHTyq+g0ILrMNikM1rK4LEvyw7AQri/QbPxvZtBNrdVJ38iK8l2CoUp5j9aDjvWcgCpE+OTj9MdAj1NKSk4JEm2dbrd0oxpDUJQMZbPl+aQqtrQFzd6VZzzWmJX+fDEjW93SRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CyaQWLGn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P4aFDSn1; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 653GHKRF2368077
	for <devicetree@vger.kernel.org>; Wed, 3 Jun 2026 23:06:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=82ey+qtJsmPiYTMGfZ7xO3mJ
	zQh9v2P9f6+Hi1Den34=; b=CyaQWLGneLz8ABhqGM2q1pm5pPR0xVvspzioIiPY
	9JiO4kj1yR//gc9dsRZ49rychKicTdjrbCYdy0nfEJWEEo0rMlqfGfHYHoTmLJVF
	nKFUlY3dxyguXZVYwxKGTpryfmqaEXFoAg6lehvguV75ncruZRgfCS4RR9rC6Wza
	1XP/ChzNjImi72U7A7cWxSmgiLKwgrhPlbwk2wAbE2v7ZqS3CLDQD1U6JJn4x/K+
	u67Nf+R0jELRGKC52nTsdLQBLjI2hhziBIDrKhSJAUVAr4bfYe28Oda3wJfL1QC8
	SYGCS3Sf0cZH11Tiw0duHvxE4u9GMYXfzr914Rd0KyJ1qg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejj3gk2qc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 23:06:03 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6798c46f723so55901137.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 16:06:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780527963; x=1781132763; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=82ey+qtJsmPiYTMGfZ7xO3mJzQh9v2P9f6+Hi1Den34=;
        b=P4aFDSn1Ys7DHhzSaCO/a77273iw/DOVA7xRlov8EG8iVT8nU2EHgbsHXnr3uSs7h8
         mjfc/pquBCEVZCjFdOTH4WkJftxvqATjBoCU936bL0zieOpWqWOTcvmZ47chHlOP1bWN
         JlU2pVtaU6TxXUupFDMykBFAkVos+89BYuhmnzN+Sg4GjTraJfSQxcU4GHA7MY+M77N1
         LrBVm3DA6k2svm4KC3in2sF3STZvJeHnaThLDkJfngGYSRK1akWbAGRCgh7umXRQy+hF
         a9UzZKHfTOzqU4VxysK5kYw8K8SRVL7ePbrs4Mng2FRT9c9+L2Jz7/hjC/+JK82seEyn
         1luw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780527963; x=1781132763;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=82ey+qtJsmPiYTMGfZ7xO3mJzQh9v2P9f6+Hi1Den34=;
        b=oG1K+1CZO+OB8jgtYmEx1EL25sHl+9P2eibZnwv+JBwLd1OftkbRs5zm7FSnQqypCR
         +LPmWhiZxileWlVAX2UbD0cHx4Ay57w5iD5Fs+a3YSAb1LAyr5f8Xn2o5T7pd4JCjKBc
         IYvhmZzY67+n6QHWrXUcjS7gWz0sGWyLcR3ZzqoniMMeMRfQ6qyq9akd1Ii72ctn4/2O
         oR6KyBjmSpacxHN6iIHyDLZOVvOi9R9lKtBNTIzXt8lc2prkCdFJGJkMMJY/1u6tCo+q
         iWXQeeaDwWixHBJV7iiFDilVT3Rv9NCHRUIq0e6n5r4CxiA5k4ya/Nj1aCr3EvWRVNH1
         I2hA==
X-Forwarded-Encrypted: i=1; AFNElJ+RbCFcl70khGdxvf/PwiTdvzUQ5H2he1ECtyFu8c7tC+7QZA38LPr8AYsV6ojFTZvfSOmU9f3iNajb@vger.kernel.org
X-Gm-Message-State: AOJu0YxaBH63c7OBepDxc+d0RHCdbMQzg2iqBlXwcYy2qXC9NbeCNKPl
	pVk7WDWBy4hY2W36aYtILzOPfeOTd6x1swRCp822e0/XllIqTK1HkJAb7qeJdY7SlUuWQUabgwi
	BoKs2kG6zUaOFPm7yWYWASgnv4G0lXeFPB1i8Wvs6we32TDj8d9ogDwr0cAcpEGwT
X-Gm-Gg: Acq92OGU+4DLUi5+wD6qkPpaRGR+Dde9zho9YAlIdNBkxOq0YMEHL+KHS2iSvxetq2B
	ijFJaSWKmH4FiEnikC/YU8KBJJk+opUg/mfpR3f8GWNrg1MLKRCWph4FQ4+pfhSKHd1vFqLjsie
	9trqrd8AJXgR1cbYEsAwHnQAGlMLvJqqcNpa1T0d5Rw0SgCZYoXiJ+8rqtW7k3cQjz+deTQtGMS
	seKMvXiIgkXrw3jYSExAdXqxIQTHUZ0RVGWVluFWg59cmnuPr1Iok6UPBZTTIpCJ8ppZhtMs+gU
	Z1bepMYqX5Hkluw3iKWmW6n78An0QSl07Mq8e7c3xrdq7AL4R25AYMtdQ6ClNmmJBkn3BdJAMl3
	7Z1Yc3QWmPKzg8tJqKzXVNaCvU4FNUXj+yV9EZ77x00QAqUJ3zB1Y1A5h+vTmnh/UfgCqmF5ISv
	yV+5Gen26VoggiSgRC/E9Sb2I/TKmEEY5m3pXjXwKDJcIDBA==
X-Received: by 2002:a05:6102:4421:b0:66b:a0d7:abc4 with SMTP id ada2fe7eead31-6ec15aa0d76mr3238955137.0.1780527962921;
        Wed, 03 Jun 2026 16:06:02 -0700 (PDT)
X-Received: by 2002:a05:6102:4421:b0:66b:a0d7:abc4 with SMTP id ada2fe7eead31-6ec15aa0d76mr3238943137.0.1780527962506;
        Wed, 03 Jun 2026 16:06:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-396ac07b66asm12801841fa.11.2026.06.03.16.05.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 16:06:00 -0700 (PDT)
Date: Thu, 4 Jun 2026 02:05:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Erikas Bitovtas <xerikasxx@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] ARM: dts: qcom: msm8926-sony-xperia-yukon-eagle:
 add initial device tree
Message-ID: <zawxi6n4dfpjltpz73ciipkhui2qpo7xop3pctufazukpbea6a@5zxauixsyunj>
References: <20260603-yukon-eagle-v2-0-f86b440583f5@gmail.com>
 <20260603-yukon-eagle-v2-2-f86b440583f5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260603-yukon-eagle-v2-2-f86b440583f5@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAzMDIyNSBTYWx0ZWRfX9olYZkKTPWaw
 Y0HAQnW/fNXuZtGdh+sIwOm1SM3qRizIAMQY06OlQaKuSa5Lc2EBvTgJMgDlYeltN2bLigJsLL2
 u8qBzFM49v+DdVpz8CbfeiX8HM2xDXHmuIzXFS1JA9CPST9T2AJpe2UVpGSKYTpMf6ATgsSmykx
 NsktvfL0kuVOHUevVmJuXZ0P+HH7jjNfUekbFL6nSsMJEmZIDKPaHkCCYzDW11KKgduy9Jyfk4c
 TU3KTwQmbDGsDIPToMD4QV0xjiE9w8n7IKfm6dQRXeYZYIgEhT4g1kl/+Nif1m0S7CmZO+7Sfl/
 O810oeIw9dQr8/blU0het92mNgsZuu/W734vQ2OjvjZUM677KszTj46MBaAb+Iwp3f7MXUZJNbw
 DGawSgpe0O+YdF/S6Xf3YOpEY+3O6MgwLxagtTrdooR32LNGWT2DPBR34rGFH9C0zO+JHXQc/4U
 AI1duqgzh7+tzCC/96w==
X-Proofpoint-GUID: JIp6vxYln5qeBCzLt2fhPa-Kp40tnMtM
X-Proofpoint-ORIG-GUID: JIp6vxYln5qeBCzLt2fhPa-Kp40tnMtM
X-Authority-Analysis: v=2.4 cv=UvhT8ewB c=1 sm=1 tr=0 ts=6a20b35b cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=pGLkceISAAAA:8
 a=EUspDBNiAAAA:8 a=K3YF90I9_K2rrUiFlBAA:9 a=CjuIK1q_8ugA:10 a=zgiPjhLxNE0A:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-03_06,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606030225
X-Rspamd-Action: no action
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
	TAGGED_FROM(0.00)[bounces-306521-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,5zxauixsyunj:mid];
	FORGED_RECIPIENTS(0.00)[m:xerikasxx@gmail.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:~postmarketos/upstreaming@lists.sr.ht,m:phone-devel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E98E563BBA9

On Wed, Jun 03, 2026 at 06:48:22PM +0300, Erikas Bitovtas wrote:
> Add device tree for Sony Xperia M2 (sony-eagle) smartphone
> based on the Qualcomm MSM8926 SoC.
> 
> Initial features:
> - Framebuffer
> - GPIO buttons (Volume Down and Camera)
> - Regulators
> - Internal storage
> - SD card
> - Accelerometer
> - Magnetometer
> - Ambient Light/Proximity sensor
> - NFC
> - pm8226_resin (Volume Up)
> - USB/Charger
> 
> Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
> ---
>  arch/arm/boot/dts/qcom/Makefile                    |   1 +
>  .../dts/qcom/msm8926-sony-xperia-yukon-eagle.dts   | 403 +++++++++++++++++++++
>  2 files changed, 404 insertions(+)
> 
> +/ {
> +	model = "Sony Xperia M2";
> +	compatible = "sony,eagle", "qcom,msm8926", "qcom,msm8226";
> +	chassis = "handset";

chassis-type

WIth that fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +


-- 
With best wishes
Dmitry

