Return-Path: <devicetree+bounces-269283-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uL7AHTmqoWm1vQQAu9opvQ
	(envelope-from <devicetree+bounces-269283-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:29:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F5E1B8EF6
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 15:29:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 91E3B305BBA6
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 14:23:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A535D299950;
	Fri, 27 Feb 2026 14:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TmS912TP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SB8VwT3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E46827D782
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772202195; cv=none; b=hLneYH78tIJZLf0m3NuNimwSkujf6XLHghWy89SreDHD/nEPQQCzv1LlKTBp3DwcXGA6G7/nSjrpk1viq8NJekE91d8LCCl5r8hKqS3Ij8lUJyfLR7WRuP/JKTJMiWbuLXsWXTFZf584xlgv58WdsFabyoa76N/fVRpVeSOkYQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772202195; c=relaxed/simple;
	bh=qiHSzVHBwmKCmpWxCLWKkvn6EVGayWKBpsn+FNXo6ls=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=P5jCVDzXpT49bmFWJ459P7EW4rqgpTvhllD+//0BoOQd+yXV1io9x1kJeddDI7EWd4qORXD/JqHAQuo+rfdl18CikDC6TAipuOFyCpm96u/qfP+zC3VuiLNfKoKoNW29qlpUTfX7h+3A3oLe1WpY097rozjgxo3L0MyRzH3Du+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TmS912TP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SB8VwT3l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61RENDgq3976207
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:23:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=LbWv1DraxFhV/1oko2gTlG
	J9gvfW5tsF984h+FYSIgg=; b=TmS912TPM8oZ0T1JYYWp2+GYljZJJQu1/xudc9
	HFvah1a9ToJEJwXgBOeIdUCULeHTsAPS3VHsbv3TaRltqzZjwrTvWVaO0vpEfZEo
	aUwzFCKXGLknRMCSGZZu5Fsmzas52i7UDLvTI08fqCAFHhqvBoCZbCNET2sHokQI
	uAClhIFEDZhK0rkZKhGerzE1kEYrOcU4+Am9c9GGduudzkrqUEiKBlt0CYK0m4Ye
	AUpxQMZFEPLkSLw/uFVKWtTgkFzgIScKYv9xBjcpJG0N32R/g2ty5cUDPpOGt6jT
	PczM88Ii7Zmo+/Cv8ZuzjmS9Y6Lec3627tgY7htdKiyLrX/g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ck43r9u9c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 14:23:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8ca3ef536ddso1959506585a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 06:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772202193; x=1772806993; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LbWv1DraxFhV/1oko2gTlGJ9gvfW5tsF984h+FYSIgg=;
        b=SB8VwT3lch4xfSuh6uFWhvNjQwQQi+eqbfXmz6PzdIi1ZlAvEgPuV/MOOmo9hTKw4F
         l1UmKU3ZH6xgkhiEYJQU1IsoQ65qTbWj54KnyEmTU5gyHJUPRdrXuCUANlFMDmTXsU+C
         qvCpb1fSlOm5TI/uV+w2kr9J/5sTK15xiHygyStk0w8VwtKH2fnfMt7oBSj115KdUptS
         yfIzYcPMB3xmjAOrJyGiCtNpC77jVuAfnNY4t0XLfkxYgcsJKgcdBIVugnne+zWFI0/+
         F7i5iVkeJXPtxU9UqnmqlFsD2LbUZYYZyeKErvoXORzpZcXKNbDJl9plZse0pWWs5KPx
         JcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772202193; x=1772806993;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LbWv1DraxFhV/1oko2gTlGJ9gvfW5tsF984h+FYSIgg=;
        b=lvy8W/nJbOj2waup4hFymMWn1RrGGnZ9HrtMqZiI3IWp3+l/D6136uDDmwGAKyTgKV
         AjV2HtAnvriy/5oonASHhTPYh8gAYPV4Lz7dO5ktijhPxJBjjrcPS6KjsLk+9WYFBkI+
         qwUWe0i3D+rG/57GCjCisGGbd41IbFeos/90Rrcc89CHI9Oz61LPOWBSpRa4szVqpQ9M
         vIVpvY3Vo7w6v8EJ/WbblfDMo6e8u+HMV4/RrGGv8CvWWvnDQPdL/Bm3dGpPvKkJroMv
         Rqa9Bh4T/MAIVTXJz3KosalHYV3WPZtw3a0T6e/QCXFBVloIPCZmHvPCBnPOKU1p9SPB
         myJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4OdlUhu/v2RLiXmoyzhs9JbaOlcTm/YSS4DhyeEqo9HH8iGQ3LKpZy55HmPDRfFrniGN/RYUw+tMZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/oNajbNyf+8NkqtV9XwQGZ4Nf1IvM3R6Ac3oA+pBAlEQ8bZes
	N3GbV3QG8Qp+7mR0iaiox/eG0Vmu1ybQlyvPIqpfwLu7GTv9ZL4P088+zS4TUwn3pYYcx4rkCjU
	5s3WmMyZnILcLQoI7WATa3Oumg0gAS1KaO5HexU4QlZvKSUE9iEgAVGRkn9Y3KCiU
X-Gm-Gg: ATEYQzyHEHjIRX/ueYAYVI2fyFf7n/lQVNchNe8IVRcJI/DCE6rQezmvrmnjpTcP+KQ
	phnHLyJeDStIWHWBNufVCY9ZjTzQ+oAXWHVkLo0ZqnaUKCST2j3xR972FwSgenEAXcMd4rI50dA
	V38P4chPTs/lgplVGqodoOn6DE90CTCYcPV5Vi80Df22wLFEOLcY2BIiy2b7h1ayhn61CiiQ7E1
	TKjb/0Y6NvZEHP72yR/BYFHxckVTfx696BfRmN+/ZXjoNeH7NjdRMxRO7SpoyN7aRZUz6bA59hE
	lGPcEFEMFyIc/DM52Knd/bndw79+Ilrjx44gbO2i49Nvr0jx6PVUdyVmpeyz9Ss9WiKCJ8QmnD7
	VQmrBm160PFsBjUPP6fkOofwhUDVKFQ==
X-Received: by 2002:a05:620a:4505:b0:8c7:d2b:b5c9 with SMTP id af79cd13be357-8cbc8d834d9mr328564385a.9.1772202192467;
        Fri, 27 Feb 2026 06:23:12 -0800 (PST)
X-Received: by 2002:a05:620a:4505:b0:8c7:d2b:b5c9 with SMTP id af79cd13be357-8cbc8d834d9mr328558485a.9.1772202191836;
        Fri, 27 Feb 2026 06:23:11 -0800 (PST)
Received: from hackbox.lan ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcbd781sm120204765e9.8.2026.02.27.06.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Feb 2026 06:23:10 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 27 Feb 2026 16:23:00 +0200
Subject: [PATCH] dt-bindings: display: msm: Fix reg ranges and clocks on
 Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260227-glymur-fix-dp-bindings-reg-clocks-v1-1-99f7b42b43aa@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAMOooWkC/yXN0QrCMAyF4VcZuTZQizjmq4gXNs26zNmNZBNl7
 N2t7vKDw39WMFZhg0u1gvJLTMZccDxUQN09J0aJxeCdPzvva0zD57kotvLGOGGQHCUnQ+WENIz
 0MKzdKTqiwNw2UDqTcln/P6633baEnmn+hWHbvje5QwiFAAAA
X-Change-ID: 20260227-glymur-fix-dp-bindings-reg-clocks-704d0ccbeef9
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2234;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=qiHSzVHBwmKCmpWxCLWKkvn6EVGayWKBpsn+FNXo6ls=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpoajGiWV89MPuotO9j0TY9byhHx2MtflA2zy47
 idxX7lWc1CJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaaGoxgAKCRAbX0TJAJUV
 Vr9rEACSpY2faiOnGoMe8kzSd6PPC1vk5Lhem2qn7I5lzQiTwIU5M4S1kbzLpT5wYDWRjvjhBcI
 toEwyTpL8I/XsVi6s99yODDmyHebSPdTzrtpGvPpJzLgtBkKThB7pJ5hq9Kx7M15GfO9LllzYUv
 bLihWNPYWrQkaqonzlMhz+fm5SiH5ELbPpDrz71CTZD3ImLg7eN5XP9YS3K+OV0dJSz/LnddKe/
 +1PSUZM8/HLrjeHPKzdaO3rhp3IYRkYlO5+Q1nCL2unqNtFJNpg7ZKMYM6jKX3r3Ru8jJJj7PxE
 Kb1Ak3mCCD0BHFqcDdZRcwlTV7i9WUaCeHGu+01TImDY6IdQs68d4ysn49PANwloB3siaOkw6fs
 YsqHcuhI1N7Ujxbgbu7zB513FrJ1/21SUsVI22c9F0lKAR4HrHbBsUOplAmEEvlzn8XHU5FCEbx
 HaLIrLbB1Ftpw0cRgt2vNxMmNgl1CwrAgxvJNV++e9gC93a6xxdLD6gIEiTfMSGOsC7gBzTvp6r
 sXsLPuUfzG96aRpmKG6YvmZcSkWmWFgHle+dxO69kXw96UcpMM5UN9tm0zlsmc+QwH9z1WAeKXj
 cCtM5cNzwq5I73QXh3azZXJq2yW1o5ekJLewh3V6mBGACNw3dK4ciVgoXLoEvP3r48Ag4A/sPZ6
 EyT0FRCQFE7x5ug==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-ORIG-GUID: 9IicngRPb_ouZ4z7GizPuHWSJe58bkwm
X-Proofpoint-GUID: 9IicngRPb_ouZ4z7GizPuHWSJe58bkwm
X-Authority-Analysis: v=2.4 cv=DOqCIiNb c=1 sm=1 tr=0 ts=69a1a8d1 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=feC5BgBSBr5ATEYaNTcA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI3MDEyNyBTYWx0ZWRfXxdLkpICfXcsM
 EDx5eX7kZI569oGhnq4+Kcp1RjZJbhcYTfTEM5Iz7Ecrb3brFmFrE0nrAE5MQBiRRO66bR4Gj1n
 blaXLYxTA8/H19fMfrGuI3y/Q8TGF7tqWlA2J4BTxDCFi8SljGKxxhELsu2bxHJDWZpJSR685Fx
 BAu9tOXKad/RqW1Me3diTnxQR3q2ACVsVJpiocHaUgcrOtXNrwa1tk6zz6dJ7uJ4pURppWofV3n
 OMOom3yK3NzUsZErsPvrhxLz0CWz9DS8qEcsp/SdMmB3JRXilG9GBjHsKKm2mputnwlE1p64YOD
 URwku9pKJXfwLN7GB0jZ+AvUAIcrEd4ctG4pB4aIDH4GINmz8DQMgc2nXjNjB/2XaEu/SaR/zxs
 t2xDmMzgD5/Pqv9I+UnFLfKKNcLiGqE6Kjlq5O3T4z5CRpcWpc1Elo5yo2vG85O+gLCUx2xMR5J
 MWDwbMUbAZLXJxMNSFQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-27_02,2026-02-27_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602270127
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269283-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,linux.intel.com,suse.de,ffwll.ch,quicinc.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 07F5E1B8EF6
X-Rspamd-Action: no action

The Glymur platform has four DisplayPort controllers. All the
controllers support four streams (MST). However, the first three only
have two streams wired up physically to the display subsystem, while the
fourth controller has only one stream (SST).

So add a dedicated clause for Glymur compatible to enforce reg ranges to
describing all four streams while allowing either one pixel clock, for the
third DP controller, or two pixel clocks, for the rest of them.

Cc: stable@vger.kernel.org # v6.19
Fixes: 8f63bf908213 ("dt-bindings: display: msm: Document the Glymur DiplayPort controller")
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml         | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index ebda78db87a6..02ddfaab5f56 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -253,7 +253,6 @@ allOf:
             enum:
               # these platforms support 2 streams MST on some interfaces,
               # others are SST only
-              - qcom,glymur-dp
               - qcom,sc8280xp-dp
               - qcom,x1e80100-dp
     then:
@@ -310,6 +309,26 @@ allOf:
           minItems: 6
           maxItems: 8
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              # these platforms support 2 streams MST on some interfaces,
+              # others are SST only, but all controllers have 4 ports
+              - qcom,glymur-dp
+    then:
+      properties:
+        reg:
+          minItems: 9
+          maxItems: 9
+        clocks:
+          minItems: 5
+          maxItems: 6
+        clocks-names:
+          minItems: 5
+          maxItems: 6
+
 unevaluatedProperties: false
 
 examples:

---
base-commit: 7c21b660e919698b10efa8bdb120f0f9bc3d3832
change-id: 20260227-glymur-fix-dp-bindings-reg-clocks-704d0ccbeef9

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


