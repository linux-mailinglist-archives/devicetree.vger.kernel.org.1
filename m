Return-Path: <devicetree+bounces-271920-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KQHM+yaqmmbUQEAu9opvQ
	(envelope-from <devicetree+bounces-271920-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:14:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D872921DB34
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 98049301700A
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4208B33B945;
	Fri,  6 Mar 2026 09:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gyNDVNiw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Unn2Bs24"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABA922D9796
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788448; cv=none; b=HISRU6SuXygUFW7C/kV2QWqj9WbzMuI0dpqzvIf3GAZ75cfBsI6QVa9IjjvHdE1s098SfVIRwf0uWWxy61gkeukEKTB2zJr8XQNdW0APvcw7M9EtqSvefN2AXKprbSN1HWpZsTxCYaOfmjuJYa6WolH2mm3yd8ugvZUvIhk0lSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788448; c=relaxed/simple;
	bh=p9ukYaDvRTvUBGXg/BeCVGI+3rRMaQiIKfpqUakUDjo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=PPhCEc9Z7yKgBDzIcbdrKKtuT2zp+vycmUTaHCzAiyZXp2N+NBGRFr5DTnJrgNSAnhPET7cuCVTo3jaq4EOTo7wPjN9c8zOvnjWbAaX0PwToRaJ/zie/Y82Mp5N0IlVSyA55B4cnewriqJ8Ak6L1K3kD6IamHPjLqOcLviLcjOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gyNDVNiw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Unn2Bs24; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264ah1l2483603
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:14:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=ssnsxf+NwNzA7Vl+ksNTvZ2lOXqYDlxw0TO
	YyAgTN30=; b=gyNDVNiwHviuCbrBlt5K//6TcE9UtqtxDxy2KcsGGGgOPfPM11T
	K91Qxqdh3vtNXAwMxNZSnQ6AsR4VGCUnbRcZ1MNd9JJgpgBGSH+o5RD7O85oXQgI
	r5E3l9gOruhbuelHr+CYrvpQl40DRJ+EbbGj59Ifj0eyXoRnmytwh1eYnlJrjaVh
	GaUtK0tWoCfRJqm0NbiWfJZK9WH+JkAHIR8V03TlhuvQVHz6OtRAiek/RGzlF3pW
	6k1PCGKFfGscbPAQA3L4a+gxiMxzLqdbk8ZpJ1BpBt2Fx2IuMXFXuMC5CymD2fOM
	tivd+HSxgBmGAcZM/yR3k5WTZzBYnVFWxWw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq84wc1qg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:14:04 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c738563e61eso1475012a12.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772788444; x=1773393244; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ssnsxf+NwNzA7Vl+ksNTvZ2lOXqYDlxw0TOYyAgTN30=;
        b=Unn2Bs249fjYF6k8VgeoqlCubqtDEjSJgTa1Ws/c2yyL+uKth+WcJ/no/A1Iy25TYj
         yWoYpnUbeDNRmOtl05+ecAhIfNcGT6AWOOmU4CnDaKNxEnt6jvrKy5wPPpIfWxfIGicw
         BZUfrvGRgbcOPs/PiY7HqQXQQF0V2Lprn9wG7xz+1ZUWxT6zU7+qMmiR8+6Qya2pKmx+
         eT2uNgtYxcEImQ8x61FWgFkJam8bLPCFYQ/gZ/yOC3Gyx27U5iJMWtdw/G+1uHbdzXET
         7QTpD4b7135v9RQLfi5kve5dKHB2dbfZEWr4PNnEcUt4GdASj1QQadwxo0F531Oyt6Q7
         HU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772788444; x=1773393244;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ssnsxf+NwNzA7Vl+ksNTvZ2lOXqYDlxw0TOYyAgTN30=;
        b=xHeZ6LczcK8eQ8TOrfQ7btZCU860CmZV9Sg18GkyMrIb6Yb9adMgYkcGYy8dCKg6Em
         ObhQaxiR0X3zofGNLZBbmYTqYqrAHadzC7w0lygI5yj7Y6MABJdpx9ZDLbpe332D80F+
         ORrqstDgiX1lAk77Nsl16t4Y6U22Qsk5ovSTvg4Pm0K7d7B6JMnhkdvE8pgNx8GKw9zF
         7lDpB+6R/+QfKWEA5XYx3TpKl925qHS+/xnTKv2UQGcsi04T8neJvLxNODTu9ZcgSCiQ
         fJmmOivkQB/4tZlYOgG/pu4MkMmdMAtqKEOGmy1iFKSzfKAiwEsGv27TXyJseAZU2Y6s
         WWcg==
X-Forwarded-Encrypted: i=1; AJvYcCUaJNnizIEv1E6/kw0jLGUCtFcC3Hw4Q4tKz1Lz6PhXWmFqdZ6iBNPSQL7IMHWYap0XcblJQVwGKKP8@vger.kernel.org
X-Gm-Message-State: AOJu0YyhQ78zqbLhwp3sZzxazy/x0XIbIJeo9w7Wru2eEWLrifdmIsk+
	5Q489Z6qL0862SMQQnCe3rIGTHyL9Ra3WHRZd8YP3J4549yvZ5l1W1UOgdnbJy2bjc8PPWV1rS5
	fW8BxyU/5nTuwzmacHBLrbPvLYaMaTKuuCeCLI8GdLnuDIgpgPRT8qfNfqAsXDCxI
X-Gm-Gg: ATEYQzy8Q6Bt7uu3q23GFtH8/1AvSZb4IY2P8TEmBKOWNMUgPuyNkw588XmqT5Ceb98
	ytBYgq8k7ys4iSsQ4omUeZLljTqk7hemQWvmKWIOfiXWi1JB5lQwxSx+n9sevbVgWU+G+3s28RK
	jml/xCeSLvlNzIdTRcsO/jvPKoQDJt9e2YoexItJz1QqF2p8vGo2v5bCIN0nspzGYXP4H+9svKr
	O2D68FnLyOl4Dp8BSAZRPvGtxwf5H+zE2aZzVfO71oINOuwTS/l073apConZzLjnkt7BzEJyKcy
	BDjPYGiieSlW3zC2TmwXGWTtO1KhaPyE+6QxkHkGf/Sa4CKay2jsooOzoENySbilZo8MyjCHKhF
	ZMdq96PSeEa7ockPbbUawqPO/Ppz7YHIL+Dl1horMsKXncZhMGfhCFTw=
X-Received: by 2002:a05:6a21:4a98:b0:366:1880:7e06 with SMTP id adf61e73a8af0-39858e0f4b8mr1859658637.0.1772788443531;
        Fri, 06 Mar 2026 01:14:03 -0800 (PST)
X-Received: by 2002:a05:6a21:4a98:b0:366:1880:7e06 with SMTP id adf61e73a8af0-39858e0f4b8mr1859630637.0.1772788443073;
        Fri, 06 Mar 2026 01:14:03 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48647e8sm1169360b3a.33.2026.03.06.01.13.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:14:02 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v6 0/4] Enable tertiary USB controller in OTG mode
Date: Fri,  6 Mar 2026 14:43:51 +0530
Message-Id: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 6jAVARQ1tFUCcz6AGCNnaFI1-TKardIz
X-Proofpoint-GUID: 6jAVARQ1tFUCcz6AGCNnaFI1-TKardIz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4NiBTYWx0ZWRfX9iov1slqhITp
 qbASG2wGySa6hDh6+8Hy/7n8zuPPMJmNQEdzNlzVNd2XOqscR7vR+mX6GkeNPNglj2a6hLbQIei
 gotAUNZJRbZBwfL4AlKtAw6bV7B+miUW9tPD5m9+JT6+U1EI+A0smf7vnTHSqKADOjw4bWzqnX/
 1wlA4cqfchFnRasvD/1R5ZLK4tjC5lWgLR38OikDEXvqWW/+SgVa+kTlI3mgOmnfp9qZ4yaPnFf
 GPD7m4xTk/qBDCOw/SggXC9zA93TFkkzQQQDrzP+Q23efA43nbwEYQZzKzgTIG0DFuKCa1PMm30
 huwOP7cbBjm2tPGmfzEEk27G4Ws8UuBBhNDgP1+fhOU1l5cbZBK8g1oJIyi2UpCc3SuAhovDfD5
 lcm0+Gp41PX963M+d34OmB7lSMub2oYm4Ym51fwvufsqfFY41tZ6cM7Okve+Kpvfnt6gJxYNHRw
 H6xoxIhyJq0pAsOxnsA==
X-Authority-Analysis: v=2.4 cv=N64k1m9B c=1 sm=1 tr=0 ts=69aa9adc cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=PAEsFWfe2vKCIHFHJysA:9 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015 adultscore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060086
X-Rspamd-Queue-Id: D872921DB34
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271920-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable tertiary USB controller in OTG mode on lemans EVK platform.

Changes in v6:
Moved Rename vbus regulator for USB primary controller patch before adding
USB2 VBUS.

Changes in v5:
Renaming of vbus regulator for USB primary controller as per schematics and
in sync with tertiary USB controller.

Changes in v4:
Minor renaming of regulator.

Changes in v3:
Separate patches for lemans and lemans-evk.
Minor formatting changes.

Changes in v2:
Added interrupts for all expanders.
Minor formatting changes.

Link to v5:
https://lore.kernel.org/all/20260303080728.479557-1-swati.agarwal@oss.qualcomm.com/

Link to v4:
https://lore.kernel.org/all/20260226060835.608239-1-swati.agarwal@oss.qualcomm.com/

Link to v3:
https://lore.kernel.org/all/20260225093155.4162177-1-swati.agarwal@oss.qualcomm.com/

Link to v2:
https://lore.kernel.org/all/20260210125348.2800846-1-swati.agarwal@oss.qualcomm.com/

Link to v1:
https://lore.kernel.org/all/20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com/

Swati Agarwal (4):
  arm64: dts: qcom: lemans-evk: Enable GPIO expander interrupt for
    Lemans EVK
  arm64: dts: qcom: lemans-evk: Rename vbus regulator for Primary USB
    controller
  arm64: dts: qcom: lemans: Add role-switch support and HS endpoint for
    tertiary USB controller
  arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 102 +++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/lemans.dtsi    |   7 ++
 2 files changed, 106 insertions(+), 3 deletions(-)

-- 
2.34.1


