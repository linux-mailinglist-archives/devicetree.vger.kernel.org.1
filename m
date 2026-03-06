Return-Path: <devicetree+bounces-271923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHwPKmWbqmmbUQEAu9opvQ
	(envelope-from <devicetree+bounces-271923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:16:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6991C21DC05
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7B0AD3071412
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9908D33F5BE;
	Fri,  6 Mar 2026 09:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="of9LiR/P";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gpv3EUhL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C3833A9E2
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788462; cv=none; b=bWCqPoyrdHArYl6MQYF7P81uUgNQAgpb8gAbkb3FhP52+pmA7Fa6fc0FzyaQQHIKKN1D2fqfjN4LhZAobTml+dGsUjIY4w1ZgnZmd898kELzPhj8zRoUMyHMNxFjxr4tnmXz29QyTOkd/arPMFTQ0UcIF0eJ+IoHaqbgQJM7J5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788462; c=relaxed/simple;
	bh=HZwFUQOQ6A7aTZLiMxZmYJR9QvaqliTJcqwhopazxpY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oXwqUX3yoX0arf9HDpERnWe/q5Fhgmj6OXdbWO3v5gJYsO5mHvplBF8f0zoYgPb4u68ckXL67zZHjACadRxZBW7Q96+ZegZJrma02hbUVT2/RAH9TTLc0AzkVj8U+nQmtciihn68kn0OuuHGaLn2SENsIlpbD/kGGg5IPKQmwOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=of9LiR/P; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gpv3EUhL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aTjT3219774
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:14:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2Kl1wLQ1uXk
	gLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=; b=of9LiR/P9vCJ7iuFCfQiNChKBVN
	0eM5JeG74Vu2GYpvazXz+lzulO+kDQHcDR8H7oi9kMGO98rE5Mn9TXmsENhkAwTw
	DhiHSyK3R6bG6RbuZ/204vn9aKjjXNbofVDG3MW2fUqxnJX6VQiaCVoYUgUQSKUo
	w7M1OikhpiwkQKzUyCnuHc1bBu2bvaHyuJmaIQNP0RNPvhHOPZa5/+5dv0yQgmk/
	rBDflsc8C04hZf1EN9VRCdi3dzo/dxbEpCbUQC/auiA3L0Stxwg7Je9BWRoRTNK6
	+DeUamwpZI+CMpEPt+Ph4MhQ1n3p3B0SIwvmUysMApEKmjTV0ANSVZ6o4VA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25thgf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:14:20 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-824af3c6c0cso3905098b3a.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772788460; x=1773393260; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Kl1wLQ1uXkgLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=;
        b=Gpv3EUhLIrve+uAmghwWUo/sJWJat25DIniqh8huRvR7LDZiKu9gYHSMoFSiqSWzsF
         dJcE7N9I5YdIcNdlzylTJurqvnFRQDGOPF3wC4iMOHYlG1i9utbXEFwTgk9gsOtOXaIE
         Dm3DT1j73pPiS230zoaq0R0pXFK6fppA6CR4xAefHx4XBj5TttwGJCZJ/PasKaaScLRH
         LmCFdfEysgQTSE6GVcUTnL6P1s1Gr9CtaaZh6Il8ZS6cxsIg3BHjAO/Aawoa9RLlBGro
         u6tyubRNZ9w5oJARiNlgosFu7xofcWetMZcvQoSTNAqFHbqKwbGVOlSmn78hSFMGLjER
         c7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772788460; x=1773393260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2Kl1wLQ1uXkgLFLhB/id2ti0lzPAVGQK+jUBMyUiT1o=;
        b=Bny0/pxP9rZr0S59q5i+oRo6t4XCsFMjiG9FDKnA0D5OThfGagceSe83JJjP1bShsF
         Q1aSylA68FZODhFuIh89Gnq1PidAo4Bh/HPDXAodVn2y67VBb1M1TXboE4232NysaJVX
         bBetceZcZEIxydYK7osaGDiXzP/2bWywcrOnmEw8aJy+21g6QNzHZeY4bDZk92K5JRGr
         e8OSgsNQNFMFYMSBS5hhDa9c4eM6SQ1DsFmi1mtxplklgNcmjeJDpeaNtxEa7D60LQOJ
         6thTpRHbWHjESd89/Xtr93+JB1G5zPRMctNigQAAbdsJMRQdAy6xucQG7+teFH0e2mNE
         7EqQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7YMAlj2y9S4BqpEIshzH3DRLBd5yjn8E473xEZiPuH5CjiYwWPw4da3H9Ui+ui8kivbsPcJ0Hrg6v@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhv1/+ubeqsMzXL9l3xkPw5u88aRqpo7JkNyMrK+kGECcrR54U
	3vzk0lRyURgHrCxyDjX1VEp08O5L/vpR3OgkIJxn+9cMPYEyqNJeVTT2xe+Em0oC4WkL1l3w4Z6
	nd9XHiO9ge7+W2EArG1IKRVxQkBV+btfYyWiQmV3GqVob96yRlwm37nzOL//nnZEO
X-Gm-Gg: ATEYQzzyUlGk0ZhFTxtDu4DDS/HOKmprIosgdKZdNq6ue4dl8sjnej5J1bW9gfZQFt3
	Gs7UUkQwrEOkcC2+LIgIqqENNiIdqHSFDjVe13+sBYBu+cNiOTdzzXh1Vfnylz98m/4GxZYrob1
	6Fza5GaojQ3SmE5A/j/5lhjfsQ8MUOA+fxLWAlQ/JxBDZlOIUCUtCFaa7ev1LPZ55z33BJRMsfc
	TGea/wmXdG/yroXGbJMO7tA2AuxeAx9MRc5dYXhs1nY4eEuqizNcXDa7zU5O7faIB0YTmR7epG+
	+ahGqDRHGH43JsrorlMAiKXmTmrmxFrNCgfxpgSKFRit6MMhcyV3j7WOalKJQM1sJ8s8Xyl6n8B
	gqjXJ4VlHrY85fl5+WQskKNzcBnN+ovg/SFkTsG8FFlEDlqOBFZ/cQZM=
X-Received: by 2002:a05:6a00:3d13:b0:829:73f4:6ff with SMTP id d2e1a72fcca58-829a2f428ddmr1397274b3a.37.1772788459679;
        Fri, 06 Mar 2026 01:14:19 -0800 (PST)
X-Received: by 2002:a05:6a00:3d13:b0:829:73f4:6ff with SMTP id d2e1a72fcca58-829a2f428ddmr1397253b3a.37.1772788459227;
        Fri, 06 Mar 2026 01:14:19 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a48647e8sm1169360b3a.33.2026.03.06.01.14.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:14:18 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH v6 3/4] arm64: dts: qcom: lemans: Add role-switch support and HS endpoint for tertiary USB controller
Date: Fri,  6 Mar 2026 14:43:54 +0530
Message-Id: <20260306091355.1178333-4-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
References: <20260306091355.1178333-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: NhqqcTNVmhgpHvbOEP3kfPRUJei6D9w4
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aa9aec cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=ZrvUoS1E-TgtW8Atug8A:9 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4NiBTYWx0ZWRfX0dQXnini/Uu2
 YGorK21S1nDRgSzpoCklvTA2dSA9yHEwJnN6jVNluC5mURpMy0aTJZC+qSASIe39uBDBYnQrgrs
 U0FAjZJxzoaUxORiBmfDNBFtQ2bkUkQRZVxcg9e7ImjllTdyCIxRtsq3FMVSDibfpZPtQl4hJRf
 YC/b3nDhYVmIPLtUMrMmcrqQoQ6ekca2GqKLlutgTAdstk+HWX8HFLUJwB9SOGGagPgChrtrEfX
 2v0va3x8kCSIY4lfTlSfSvI054mUD+EL+JKDvOjb6NqqUyrOL4ROANnWmAjc6l1jIoxwpNncAUE
 I5nm1UqZGHDr7iO4IQ3Ma7B3PJJv9PwjDvekEjA1tJAe6Uo0fTMVuZlL0cCYwa/6uW2sVb3qoq+
 6EcmAI8kFI3p77x2trk3Ho0Izn9iQbpIVhAehYxiTcjr9jfrBfxaPIti+gjvdUG092GnESo0AE0
 3i2LKG0roeOzCGo0ciA==
X-Proofpoint-GUID: NhqqcTNVmhgpHvbOEP3kfPRUJei6D9w4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060086
X-Rspamd-Queue-Id: 6991C21DC05
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271923-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,a400000:email,qualcomm.com:dkim,qualcomm.com:email,1f40000:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable usb-role-switch for the tertiary USB controller on Lemans.

Additionally, add a port node with an HS endpoint so the controller can be
linked through the DT graph to the corresponding connector.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 808827b83553..d0e63336be6b 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
 			snps,dis-u1-entry-quirk;
 			snps,dis-u2-entry-quirk;
 
+			usb-role-switch;
+
 			status = "disabled";
+
+			port {
+				usb_2_dwc3_hs: endpoint {
+				};
+			};
 		};
 
 		tcsr_mutex: hwlock@1f40000 {
-- 
2.34.1


