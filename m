Return-Path: <devicetree+bounces-275125-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AG3vJQLqs2l6dAAAu9opvQ
	(envelope-from <devicetree+bounces-275125-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:42:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B39281A2D
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:42:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61A3A30D5C10
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D882238C43A;
	Fri, 13 Mar 2026 10:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="klGjLxmw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aNyia6rk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B679138947E
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773398329; cv=none; b=j3hetjUQLuOW3ip9onYllHQt0Oosl4Q7y8CwVc8KsBloz0y9sjGgaXsxQYV1s4hndmcUIj96lqiymlkPNfPhmF1biFTLPqhzZzd+R4XcRhLVPJ+6rFTU5Zo8wUrXiC9QE5uAcbBLst1mYa5OHiDYO7hrUvkqM1U3x1M7MxyMBxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773398329; c=relaxed/simple;
	bh=wAR3WxCM3du70x+eI/EMxSpUad5N5DRpvPqRerY+ABo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tmgPpNRzgx1jtO2y3egzPoWeTX5nvPNpdPyvPuCithXmfdRiKRfkNur7lJbEQEgDP7C0KdHQSQNcylB9IataxiJrAUJuSddHeaNk+OEBsd9M2f47LO+3fZvayQqk6KCiMBf9UgWvT3PM2FxA7YY9xWGyrW2jZOSlc8UQqvS8Zq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=klGjLxmw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aNyia6rk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D6oJnv792846
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	irDqHIRd93kMUV3dIu2SY2NgZBl7ZKLfQ4zW7XWHnUg=; b=klGjLxmwlt46bjyb
	AJC6X3rATNoLnFsVdIQt5y8v/65bZUjkEsK5Hai8B893DctpLYn5YjNzXq3w3gMW
	t4RM04vf0rWoxClD4xIdEWNGkh8Yw9rnuzTHW4AEpG6NgflUOrQxIjxfrf1sOQOv
	0HoSCvPi+T1+2l0GwhTu5TnRq/fjOb4S95Bq3ccjN4RgKohcORc2WbgM4ZMl9URX
	mUd9xj1fJzoSqVmHW1OmIK9OHHslkynuQsgrW6aqoXCk0Vw4EqmuH4KNEFzqe+ef
	UDL0SNShVHpGGcCbFgBu0I2ddmx6K+3ObcOmabs4XbtDWIeuks1g6q6UfRDu8m1U
	nivGsA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvdnt0tps-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 10:38:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8cd81ce6fdcso1864852685a.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 03:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773398327; x=1774003127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=irDqHIRd93kMUV3dIu2SY2NgZBl7ZKLfQ4zW7XWHnUg=;
        b=aNyia6rk7IXMNKl0VK2KVRJaykXJlrcE+OoHPKuH4tIlUbXHzOs8k9uv0uOtwzMZMG
         zo2XKBB82JuBWZu6oXV2qFzH6lPbrqc1CgtLf2f8G9323qTuW3vzCHNhm5VF+/GJTHJo
         WCvTUpM6TURPqBM4cGiqL0u5/wDXa04oQdF996AlefcDcs385fZjJD3E/DpQ37gUiYCm
         CiumrFibQx7f+Mxe7ud722qYgn1D1fyQKNJic3CFWUoW0IfhI/XfsS68LgCoUdVGoE0b
         Dt/nWbCzey4Ymi/3qKdbqk/qBsdSxDpmYDw4RyswNrCO46IxaSdtwG/YJC3td67vzKLE
         5Dzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773398327; x=1774003127;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=irDqHIRd93kMUV3dIu2SY2NgZBl7ZKLfQ4zW7XWHnUg=;
        b=mo+W1Oz73ndr3gHRu7Ad+XMxh3Mg4fk0GQZBtYf2T8VAcvu7LJ8m3Kn1lrnw3Ox11b
         Qt50D7DfFaCFJGweB8FUz3s89fX1H+AIdhDLiB47KZ0e/gsG+smwKkIM3NWWgK99HMlc
         UdGEpgIkyudi4zgPlUZl3weQk2EVAT5P+i7X9pan3l46CgC46Z4qcmCL36pJc01ZH0cB
         T2gPmBv4gzAX/Cvd+b2f9vuhe4qzzO72YEIOS8JX9h/VJFC9oJiL1+xGD4pDVCbaOk5S
         F90Bbu1zwfoOmRUdIZfUBrwx77CYoV5vHcr4R9XtmaTecfdxaXL+N7r4fd7Tvj0+W12U
         47LQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs4SDopjcD8+DcJXJriC6QUNAXACAOI2h7r2bxNH6DthoN1NX8DbSqiwOK2NpXihB5fCIWeEA0roJe@vger.kernel.org
X-Gm-Message-State: AOJu0YxrKyUm6DrDYtFGOpPZ0hyjyzwMVdufL6K1qRPcBNh0NduSMsBm
	QZD66/u1Y1kvhe7NCk1CaZX3UtPjDaTZlEarWYCVkm/ajvRhojgwsZk3Xn+BeHKIQiFllJVNxJ1
	58VtL17xCOQoNKzHhZv6LkM5wwXdVNKl+BA296Wk0Tlb4LI6bdnLg0xKSXCltozm3
X-Gm-Gg: ATEYQzyK6I0YUFMJXShBC+Db4e/Vkw70lWkEysYdgWJ8OxLHVVq2jqKN7TrOXQZlXl3
	lrj6aZK9ISq8faKxHDZ57u8e/COKosHkyy8XSbhH3YRGTi6V0OyYJNKbIIMnCuQp+pjh0LEVgu8
	w5w8Lv8KeevjB1uWRcZ9bIHyvxYEAp2cSvfK5dDxfn5fJfZICHwDaK3OuzB3N24bjxTJxa+ry8M
	9KrkNPyfpxtvq9Fj5lQLtnm9plDubYNujjSe6TLbWm4Ej0TQaD3RRBLPhXUIzyPSudBlhTo7H8W
	KlgtLIHHpJSBiCTS9EavU3QihiP7+kqaNH9f1cCNLj2CFpbdsS7dGYLiuDmc/uSHWg8sQeZYeJd
	pCC6ga4PmcpFtVKXo7eicr9KI2LSf9ZBNR6N7q0+xAE2d3wTOsMb7ZQQ=
X-Received: by 2002:a05:620a:46a5:b0:8c6:a539:55d4 with SMTP id af79cd13be357-8cdb5b5aed0mr393681485a.48.1773398326969;
        Fri, 13 Mar 2026 03:38:46 -0700 (PDT)
X-Received: by 2002:a05:620a:46a5:b0:8c6:a539:55d4 with SMTP id af79cd13be357-8cdb5b5aed0mr393676585a.48.1773398326530;
        Fri, 13 Mar 2026 03:38:46 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48556426be9sm20183445e9.9.2026.03.13.03.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 03:38:45 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: richardcochran@gmail.com, r.mereu@arduino.cc, m.facchin@arduino.cc,
        geert+renesas@glider.be, arnd@arndb.de,
        dmitry.baryshkov@oss.qualcomm.com, ebiggers@kernel.org,
        michal.simek@amd.com, luca.weiss@fairphone.com, sven@kernel.org,
        prabhakar.mahadev-lad.rj@bp.renesas.com,
        kuninori.morimoto.gx@renesas.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        netdev@vger.kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v2 1/7] arm64: dts: qcom: monaco: Add HS/SS endpoints for USB1 controller
Date: Fri, 13 Mar 2026 10:38:16 +0000
Message-ID: <20260313103824.2634519-2-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20260313103824.2634519-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=KZrfcAYD c=1 sm=1 tr=0 ts=69b3e937 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=yIVWX9dL_PbMwCFNGlkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: jY9_kvZjmxuPTXb5pPWCZGiVGrRsxrtO
X-Proofpoint-ORIG-GUID: jY9_kvZjmxuPTXb5pPWCZGiVGrRsxrtO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA4MyBTYWx0ZWRfX0Oy28sAFPQMY
 4r7pJlcOFIvWDKQfdYP9jK4mpwCs9O3pw0clP4o64AVV1QXqx1GOntCXl1GGFcC3UNNkJBChLh2
 AwhM1GYZruXebf4tYhyw6OpYs45D10GLKZaZp4aFrrEBpb288qCtZmhq0SjrdlHIZM0lk+ZPnoV
 GStRNS0kEG37Yz7FLm225h+8jn2dCC0bX4twTOVV2n09XvLb2EJVUpojg/CAE5GD3NLV36sv9oU
 m35Tz2RgfIo6dywwORZxvXRtCa3xJtXWbfvXPy1RrueY7ybjtgav+yb8q5/Rj4dMCUydQnAqNEI
 TCf0eq1w7w7DX+attXLjxy4ZzMb7XfXKkHNdz6hJt/9cVFAwa4KAbfUaYmNLcj2DGao2lqFOf2o
 DexeFtOUFBuJL5lRSyYtOLZFVaxY4lKFxBz8DuKrJ+j8IRgSJ6VYvrK0bezCiqtzhdE7zXetBai
 BCPGkiPmlUSt7psktWQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 impostorscore=0 adultscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130083
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[gmail.com,arduino.cc,glider.be,arndb.de,oss.qualcomm.com,kernel.org,amd.com,fairphone.com,bp.renesas.com,renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-275125-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,0.0.0.1:email,qualcomm.com:dkim,qualcomm.com:email,a400000:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 01B39281A2D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Loic Poulain <loic.poulain@oss.qualcomm.com>

Add a port node exposing the High‑Speed and Super‑Speed endpoints,
allowing the USB controller to be linked through the device‑tree
graph.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index a58dc60e64f2..ce1565c7cc3b 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -5180,6 +5180,25 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
 			wakeup-source;
 
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb_1_dwc3_hs: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb_1_dwc3_ss: endpoint {
+					};
+				};
+			};
 		};
 
 		usb_2: usb@a400000 {
-- 
2.47.3


