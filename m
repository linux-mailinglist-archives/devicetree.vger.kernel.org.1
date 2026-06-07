Return-Path: <devicetree+bounces-307870-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xmYbEojQJWoVMQIAu9opvQ
	(envelope-from <devicetree+bounces-307870-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 22:11:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBF565175B
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 22:11:51 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=EtfJsLAa;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=InrCmstZ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307870-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307870-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 320603009176
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 20:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF4F631F9BC;
	Sun,  7 Jun 2026 20:11:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A1630D3F6
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 20:11:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780863082; cv=none; b=eJM8EfwkTdwzQAf1tGDwrHryc/LYYXynmcNKHMNINFH/ei6kv0Zf9uIgmX8Ob8V+dzC/L4N7T04GgebdH5Ob2L9YXjhPHIIY4wg+2ewFhxUalcxZoSVvtNIsmkOaYSksLbfTMEHhj1fM0x0suWk/IPzj2ARX264ChOK2V7VAW4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780863082; c=relaxed/simple;
	bh=Juz56EL8KWEI2aYjC5HLg4FYlkb1e+CV6n00DVQEDio=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RpMyJv073PVr7Qk6L7fzd80UXH5hjR6xy+0Q9cDLoNx7Zc0Rcn3FudpeqvBxArsPcOsJz6jH3zfh/ZY/gZtYwktRVoozIJJ7wwZyGrmaNSqSfds/qfUU9NDdxK1wGnL5c13dxvq9bQrVuW5MkVfPrvEtw6yhZXBUXUguIGbN91g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EtfJsLAa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=InrCmstZ; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 657EjbjJ440655
	for <devicetree@vger.kernel.org>; Sun, 7 Jun 2026 20:11:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ixB+mdQztiIA8ONdrXKTII1r
	qAwe2UGAnvN8bjz10Vk=; b=EtfJsLAakTR03iTjAvN2K/Tm4YAyVEInIR6NMBRT
	ypB9b4pY4zvO4jeji+ZeOoif6Za4tqpIKR5cfhVjHkJbPgBuI5kwJrZFT+8ldkGs
	kp47qbGG1aLEKRS+ZCy85Munej9ZcH401xlNkmN/dCyEHc5n7Madwc5NfQoRX0Cm
	cD4RlPE5bHomTfHAgIhrQp6LDj1RwzSXMQX4MuwVy1ZajiPQbp8ABKAjS4dDBYRu
	KTWWEqw/GE/ZP9cR72QI9/H+8V0ogjifH6xhn1SUYyUavO4464xytj+UZ6kZ/+0x
	t1Og+OXH0eiLAYMQugsN9OXtq9Q9AGOcutap44GNfZWfXQ==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4embs1cjms-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 20:11:21 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-5954c5fbcc7so2333629e0c.0
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 13:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780863080; x=1781467880; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ixB+mdQztiIA8ONdrXKTII1rqAwe2UGAnvN8bjz10Vk=;
        b=InrCmstZDhofSTln5lCOOrXcD3ENG9k7BK0wKsKVA2/JfIlqo4p0nJmy28Za4UKLCu
         uzX/cMe8wOedpIqKWqhuYAVjLndedWjLB1E2OwQ0dkQn0O932GePWQMsM1CPJUX85Hau
         k/2G3vAfvY9GYJ2Qeg/h6bcURC8olw1ID6SQmoMSiMEDxbpcBH8FKKlkj0gs+J6dDLLG
         R1UXTp+rBSFn/wRRX7NFWfk/w9wqrFmZhdtj+yjloQvAbdwD2pRE2t1LLbRJBknTYsjG
         wfDxkTf+Q2N5bmcmzv6WZIF9jahUifVE0HUsoy+ZsfFP/eepI+8XQOYk7y7i3wI+vPmu
         vFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780863080; x=1781467880;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ixB+mdQztiIA8ONdrXKTII1rqAwe2UGAnvN8bjz10Vk=;
        b=CFosJTd4cp2eJMJTEPMnFm6A3Ysl/7vbhKz5l4TzPA3U8nijsndWz5SwqzmCKV4jeV
         Ho1aq7AFwTwrpAS3Df5fJbTYEauUvQnEHwU/GJj6UGTmXCtzVhaPCRbhRNB/DDydnj47
         LSUwA6DeRM9bTEvvids6v4movpAZwQkDOKxJ86TVCgmWmpMiP+feKLYybdhDcaI8vRKX
         scpFHrQzQxpHawKV0XHdzzYkYdUkZ1zLCkA406N4ai9Ro+W8uxx0jf8RwdKJBPLEdnMT
         eyAnThdyGaJ+NZ5r1SJTRWCILoWqQlK9WixoAWUufujOQNnR64JI9PprId3W8SlZS29E
         SlfQ==
X-Forwarded-Encrypted: i=1; AFNElJ+Ts+kKvN6src9dHnxrK6dihbtHzAHSegdqszgF3ExfgHDBzDwysB0sKkVAV+jEJechgLPYnUZkytMe@vger.kernel.org
X-Gm-Message-State: AOJu0YxqJxBrJzzy0/+Dzusi9pLJ2juQgv2iAXfXxfZCfQYO6JUMTfmb
	pxBWOlmeCENdJBo/wjmpAAUhwH6E03rY1Vq8MTX20hQK3snn5LwxPt2y/rellNPt7z760qiZmbE
	ipZV+cfTFJbCh2UkIDxn2DcwpEuLEO/GneLCe35lZQo4RN4oRWVKYFULKVG9USLOt
X-Gm-Gg: Acq92OEXokxCANAtG2SUumzXg+RogezU7G4kceugTlj4176ammJ6AOxyfFReKM1Pkdh
	QIm4RkP2nwfGqiPE4obh0ICjk9N3L+VWdNiilvnyN2wpUO6B9eAd4m6AW9JALx4duUfOXN3Wx8y
	2oGHYASz6omL7kUctOSo5+urhphtzlU2BcFfutVBQfV2pHoHoL6ullHWPBOzbJH3YtWxDtEswRL
	xNMkvH7ZUhsndr2bPN7VyB05u4DeXxHwpi1T1HK/Pi8kIZ1ekcmwaqoEc1byUZ3MWHV3ugYLzKX
	TUHmTsLDJx9mnqRuaYwjsH4q5EkjmX1dNPtuvhru5kjPAlr/ii/3AKZ70ymC6j4E3/tzkIQ9wtV
	ik1J96LeHYGihIeSo1PYv745V9u9cgO/vUIm7sxUZgMXqUMt6fscZ+aM+wwWRwn4vYSFLBIedSr
	Wdayu3y9QTUPbhoNGUX5tyoug8eHykHt77KagPga9t/sU5zA==
X-Received: by 2002:a05:6122:3284:b0:59e:f988:51a with SMTP id 71dfb90a1353d-5ac4da03f4bmr5403669e0c.1.1780863080001;
        Sun, 07 Jun 2026 13:11:20 -0700 (PDT)
X-Received: by 2002:a05:6122:3284:b0:59e:f988:51a with SMTP id 71dfb90a1353d-5ac4da03f4bmr5403663e0c.1.1780863079508;
        Sun, 07 Jun 2026 13:11:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5aa7b8ed901sm3288867e87.10.2026.06.07.13.11.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 13:11:18 -0700 (PDT)
Date: Sun, 7 Jun 2026 23:11:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: ipq5332: Move PHYs and PERST# to
 Root Port node
Message-ID: <kz2curb25habqhw6la6wnlrfqupfndaveeec3u42hccdxijpxz@psbp2zurjpul>
References: <20260602-move_perst_to_rp-v1-0-8ee5b80316da@oss.qualcomm.com>
 <20260602-move_perst_to_rp-v1-1-8ee5b80316da@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260602-move_perst_to_rp-v1-1-8ee5b80316da@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA3MDIwMiBTYWx0ZWRfX9er3ly7wRZkg
 9+qvnfP7Zklks36L8arsg2fNHJNbGCa1W5CROInwLazWqVE9ysz0RQxYc5os0LnKWZN1cp3RY7x
 zw0YOUOgb6ZGb2TH4NS3OpygNh39pni7AYYJDqQY1LLjpuQcCO3rFrPsiR2ec29ux38lgg7pzhT
 74YqTNISHzkXfJbjwS2rUHbzIJRl3LVEbmtP2wLzqjOH6pOvQWXL/WzwJE8VAFFvyJBJgohKzBc
 Ma17s5tMuCUh/LzasJyOtv9lVgQkKmgUL++7JL+I0czuM4yVK3Pg95SjwgwKTAQSFGYxLgB9d8X
 QesuMjHOQq1RMByf30Lj4w4r847E9uPeevvakP/lSCpaMuS602+pRklH2e/mDnNRIjxEcVe2+37
 T50MUJp9/6LRLcSMWF7SvpS6PnOO5vQYVl//A4P2r5N9tgenarT8TUh9bFa0+1C7PPk7GODb8gg
 4i/0+hYwIrAXmyfz+cQ==
X-Authority-Analysis: v=2.4 cv=CeY4Irrl c=1 sm=1 tr=0 ts=6a25d069 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=b_Pr7HiucSRPs_5II3MA:9 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-ORIG-GUID: gAn1nb_NHitC4XLjykOkkWZ8Xe-5yRG-
X-Proofpoint-GUID: gAn1nb_NHitC4XLjykOkkWZ8Xe-5yRG-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-07_04,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 suspectscore=0 adultscore=0
 priorityscore=1501 spamscore=0 malwarescore=0 phishscore=0 clxscore=1015
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2605210000
 definitions=main-2606070202
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307870-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BBF565175B

On Tue, Jun 02, 2026 at 10:04:04PM +0530, Kathiravan Thirumoorthy wrote:
> Follow the new binding style by defining PHYs and PERST# (now RESET#)
> under the Root Port node. Avoid mixing styles and move these properties
> to the RP node.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5332-rdp441.dts | 16 ++++++++++------
>  arch/arm64/boot/dts/qcom/ipq5332.dtsi       | 12 ++++--------
>  2 files changed, 14 insertions(+), 14 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

