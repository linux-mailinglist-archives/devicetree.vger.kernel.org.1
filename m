Return-Path: <devicetree+bounces-323423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PAZfGbBYT2qOewIAu9opvQ
	(envelope-from <devicetree+bounces-323423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:15:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D327D72E234
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:15:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=VpZucBEP;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=jG2pqrlZ;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323423-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323423-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 908D8304299A
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402C93EDE6A;
	Thu,  9 Jul 2026 08:14:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766083EA946
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:14:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783584894; cv=none; b=sL3QQLcFRqms/7IJ3I47yeIIii83sCmpmtrpqPvJle4b52SEJlnHlyMH8X4TbPXxHfO3bxHeKfdLEkuJhbF4gI43LPJNAl4Q33XRrRrIrxd57FyR4OVh4Qq0caSA09QG8FGcvbCy/kLEN18DwmlsuPOQ+ejiesntLHPCW225bR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783584894; c=relaxed/simple;
	bh=uhrJbVvz0eJkJdWigEeM9PBuPlbT/oorC1u/oLq4UgA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aH+lwFKetpTEhyEkufetrSsz5yR0uUY98AbR3jvCcfTT+WLPSRGi3JgT3JZDUE/FDpaS7T+SYWd4gEQK2u4lqvMGxRraqYbfAxMYF1peS+Y6N/qMOQzuT5S17MSQqh7dBxuBymblHgwE7jy7aY48/5MXDjZPlZfIsFZM0jxAaYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VpZucBEP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jG2pqrlZ; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 669618LN892153
	for <devicetree@vger.kernel.org>; Thu, 9 Jul 2026 08:14:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bjsU1wTP3YtBD570onTp1S12GhY8kukyTDBkNhcDcZg=; b=VpZucBEPYvbkThWp
	JiVL+0MToGyYTJpqzs/CawevXJUxLEvE7XF4HcRgzr6uQ9ssMss3KoSHuAYLE7lx
	uAvy4O0dwYE5FNfZZS7vUM0kg2crLPB2kniGbJ1FtrX4H6/C/EADzEOF1rHYhdYY
	6Q2yYOBcBHiA9xNmRxs4pMFdpVoVKh2N/f6hRkusw2OUk2icec5/J53fcUwX/fmR
	OQxyBj4Rye6WBjnTBTMG54RUCmJW1vhpT4l3W3KhhzZMVmJaVhmxe4Ymk2QJFBaX
	Oj3yvoIJ4+WBWOs5LmDM4C7XNktiEWzfr1qIoHhHUElWIJ0O2lilz5ZUEu7StCff
	9DOkLg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f9urvtjah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 08:14:45 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-ca124bf0189so553300a12.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 01:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783584885; x=1784189685; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bjsU1wTP3YtBD570onTp1S12GhY8kukyTDBkNhcDcZg=;
        b=jG2pqrlZxq1at40cRf7XukP0yYBKV7/Gu6HjrZcJP7hpPK+APSaTbIIO7vwY27S7X/
         X+bumC6dU9lGaSbGnxrRCsxy715XAHvevvURyw/2iu/ewAwC7KzWlWbYYSX3BEL+dYfj
         A0vWTUMHW34oNERR2+ZXmGNnWQBxXMcMFGLMoJw/qVH/PT4YfRmfc/CWDH3loG4Z3m06
         7zRk+hkTP5+eDfrV0tgxAvffEGtYYe7OngzA3Xm2FAypBs0QEeGLnJnXLAmSfElco+1k
         Rli6Il+rWZ+WvNszWMldHIbvKWIIko3mPymu1XLyGoIbH3NLeL8aYXfemDxSjF63gEXi
         GYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783584885; x=1784189685;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bjsU1wTP3YtBD570onTp1S12GhY8kukyTDBkNhcDcZg=;
        b=BaSCWVgYx0SqtmP7ZQfnPHgoGzTtbC1+S/vVXUIWPHFvXW8enLHxBLgUX3Vk7sWnRU
         HMoXGd/l9Y5q9iAgHj3g3eE7afEeXvCij9gGwdxBzMSdlpSHQmlz5tteXJhZ4pVXpsUQ
         jen6YNjQP8ZyyZdVzxsj245fV56W6ac9DDw1PpeE6MIzPyDeG+6VMnewt8GcgtdzP6Lj
         6JAdGKG91SkPd5lEUr66maJmlfQf3uO7q5YjmlkE/I6i7zYayTCdMRPIfNGOl5ydO6ls
         9ys0yszzux4HOulyD+nIr7z2MsMTAXD/sgviYXcFVkXL4lbmlFeftcJ5FmMJD+yF6P4J
         a/Eg==
X-Forwarded-Encrypted: i=1; AHgh+RqAFXp4ClL3kwylrhLPj7Em7HxxWyLkuI9E3ozKssEoxBHB/BmSBDZxuMl3B2pCorzaPmtUcOGIdADO@vger.kernel.org
X-Gm-Message-State: AOJu0YxW6G+tqFXkufLEfnIqZqylGNR5AVEMdmQZqNBYwQsfrwOkjhOr
	/8VviQe5rPHAYIAhUf7qWPeDEQTrkUtgCFaW9HUpgNYIsDrtRUrAtCuljfBx4OzzBuJkF7u39Je
	ri8U0tswqbWFyYqSRBZOHaoHTKAuHfazptCOuNV8h22H8XPcmIo3EpV5US4oSY/LpwB2Qd+gqb6
	4=
X-Gm-Gg: AfdE7cnsC8xVbB1odiS9vUGd+cOnaF3GhA1QrovVhXktNbC1NxpZJYXE/NmYQA3Vb7D
	d+r65wXy2wosJWXd2Ttve79aLzBiyMZl+sp7wkfJJmuEFdusYW55bEyIev0mHMymSEXeql251hN
	S08zMteRFaC6EEqGocbahWmFpcNJCklMgRUr0pcDUMU2IYLccskftffUQ3ueUK58Bfi6qTtrdqv
	rC3TuKjCGzInwZNPsEaesgJvAZ3joM+bPsEfvBs5JsAHjTXlM7QSgAZn40V3pGFoVbR4dbIrgkM
	f8710cASsBWMV1IpRrfECOL/IpHLtDDGv5Jl5BSTxszMTBWEPMB/L8sPNSTvAL6eCIMEsJ7LVVc
	8db3SlGAqsbNjuLEpvOz43vUu+1d8RcYZmBthDa8akIYW3FPszvX89PF/RPRMIg==
X-Received: by 2002:a05:6a21:6b87:b0:3bf:ee42:192 with SMTP id adf61e73a8af0-3c0d670d81amr2002485637.6.1783584884759;
        Thu, 09 Jul 2026 01:14:44 -0700 (PDT)
X-Received: by 2002:a05:6a21:6b87:b0:3bf:ee42:192 with SMTP id adf61e73a8af0-3c0d670d81amr2002457637.6.1783584884328;
        Thu, 09 Jul 2026 01:14:44 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ca5b3162d3csm3392290a12.18.2026.07.09.01.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 01:14:43 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Thu, 09 Jul 2026 01:14:25 -0700
Subject: [PATCH v2 3/3] arm64: dts: qcom: kaanapali-mtp: Add SoCCP node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260709-knp-soccp-dt-v2-3-6e2bfca96088@oss.qualcomm.com>
References: <20260709-knp-soccp-dt-v2-0-6e2bfca96088@oss.qualcomm.com>
In-Reply-To: <20260709-knp-soccp-dt-v2-0-6e2bfca96088@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783584879; l=697;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=uhrJbVvz0eJkJdWigEeM9PBuPlbT/oorC1u/oLq4UgA=;
 b=1gdjMqQR+68XLcasy3dYWTdtCJ5f3s0snnY+wAOUrA3udJ+NZyjAjyVPbI8LQvGS9aj2ccEvu
 on5yMil738aBUCs8ZgeFljW82TJ+NpUzytBCJuBHuAfuW5z+eOdeoCj
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA5MDA3NyBTYWx0ZWRfX0oaJSbDBhh02
 Yq57ZsNOHMcFe2tG92Joq72eUQ4x1ZGJnXQWEBr4N8poSJld3Mj2d2HlYM0KgHwuCyGRLiv0zBK
 kx1zcoI5+tdSu8pT3z2on7IO/6RA8X4=
X-Proofpoint-GUID: 85tFeaIVzX9iu-98BpamQL8H3IdI1mN6
X-Proofpoint-ORIG-GUID: 85tFeaIVzX9iu-98BpamQL8H3IdI1mN6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA5MDA3NyBTYWx0ZWRfX5Zm05mtHBiFT
 krOokdi3HT6/sPyxpeYcXRLc7WR56moH87RHdpLlG57sOBttUcjZLpv4efdfplzDj8z+IBru3i2
 n+/JQC8h2d2yzZim19hFSwSuE08AtSiY7lKw1CaxmH75HhCDu9muZODCmlgd93XH3Ej2a81kRmR
 cRrMGUFMJaqHKJM60AXJ3ra9tkQveyMU2KQAY2Qe5OmnSKZOB8nHaScOb5n+m9i4nxCbpGeb63G
 QbGiER3x77puNTWHoABxMkhNHOy08i5+sP/h7bsPtwXFpGmHYhILNZS8r0yDGzpmHSpgRzGSQGu
 gMfp59eAJirYLHAuycevDrcjL39qGh+8Csquxd7jFyvZBroV+5ymrDOh6O1mIFMCTLQufolDlp9
 vpxun0aYnlufdd/ci7iZ9VrJ4vDSZvioDfQtUKc7QZQ9kEkI1OE2X4bj5RU4wejNUXlRsJWTXPa
 Feg4vhPJvvMFGfTE0aw==
X-Authority-Analysis: v=2.4 cv=H43rBeYi c=1 sm=1 tr=0 ts=6a4f5875 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=taLcRXbzdJthnF_gdBYA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-09_01,2026-07-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 phishscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607090077
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323423-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aiqun.yu@oss.qualcomm.com,m:tingwei.zhang@oss.qualcomm.com,m:trilok.soni@oss.qualcomm.com,m:yijie.yang@oss.qualcomm.com,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:jingyi.wang@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D327D72E234

Add SoCCP node on Kaanapali MTP board.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
index f9b5b5718b90..b8d70623dc10 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
@@ -1076,6 +1076,11 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&remoteproc_soccp {
+	firmware-name = "qcom/kaanapali/soccp.mbn",
+			"qcom/kaanapali/soccp_dtb.mbn";
+};
+
 &sdhc_2 {
 	cd-gpios = <&tlmm 55 GPIO_ACTIVE_LOW>;
 

-- 
2.34.1


