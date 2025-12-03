Return-Path: <devicetree+bounces-243903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93021C9E3EF
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 09:38:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B0343AA326
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 08:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7CA2D77E2;
	Wed,  3 Dec 2025 08:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bUdRG5ZU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KtLlrKVU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640072D6603
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 08:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764751027; cv=none; b=S103vFoyhax0muppfUD+6ldxCHZvMep2WpRKX0VWF6Y04fkyRnu+g2Rt4Qd33CXbn5BiohILnY9p22taAg1iDZLiQTzBoaz27YHUoTUrfAJQzf0eeCEXuzWqtbo9j0fKACy65gVhfn8Dl/O5jRS7fbi4aatzEulXPFV6ucvPLZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764751027; c=relaxed/simple;
	bh=aPsejmtIUw3vCzEFX1f3SMBf8e4TQ4PLWL1r6BY0DYw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cMt/ffjK5gJeYhOpDsjkTNBjMdj77R9ALUUNHCnDJmag4M3Wh9Gv0WhRIGQp8qpzh5oZPVeikh4z5YsUw3zN4F3y88vg2IeVL8AXFmoUAK9fqshcx7ivU1AYILIvDqAdazraszd8TvT9roXfwUZyfiXKVT1Tv7v58+bkAqCxtNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bUdRG5ZU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KtLlrKVU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B34hlsF386068
	for <devicetree@vger.kernel.org>; Wed, 3 Dec 2025 08:37:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=s1I+JK7Ehts
	Vkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=; b=bUdRG5ZUbeaIcWGS03roGO6/y95
	6tzz4csS39cxFGjtdhgxkEXpn+KBhkDDVc2rzhrZxP6JP98zGKWz9IaQd+2hkvXj
	lk9kwXnxEXQ+6O/DqKk50i1SSwZNSw37r09mTlX9sA2R4Bth4hLuiZ0bDGfJ8LNO
	heANNYxgA3EGl+6aQ9O84ZMcTPIugJs943/1cvcPyetpJ+WcylzPDfW9iXZQT81R
	AOb0IsILAStw/6Xkz0MiBymGO9Xsg2lSzngO7oJNJQw9zqnZTGDlypICV57B6e3i
	x8vxSg8U2Twu2uZuREuwqO99WEupnS/3vyh5IPfW0JUft1fFMWnKdIhMNfQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4at5db2798-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 08:37:04 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2954d676f9dso46681135ad.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 00:37:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764751023; x=1765355823; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=KtLlrKVU3+YkeIoGby/c8EwnpeaxuXz+Qz+O4Qb7MIFvOTEd4qixnFum8xUKJv/PEE
         uVSxq8FjzX9GTFTgkdPKtGzZ940LFb0NQF8+k6J3rZ0deI11Nnys3MgEXTY6Slns5hMH
         qOGFYfpAkxxUKeAmQFvGOyLbAH8wyZjeTi9zDzHw9jiUa03CNU2ey9quFclzqmm9TmOP
         0BkcWgGIYgKMND6C2Y1NJmIHa1DCY1mSOdAKvWhYuVIEWKieq/4XlX+BXI5T9gxwfVx0
         dJ8h2DhlvWvRb6F8NRt/XMRldvda39aD1/cXg9u1sRvBoHSOYuBpxuMHJj+6S+0XTPni
         V3Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764751023; x=1765355823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=s1I+JK7EhtsVkqv2mCcWDT08UiFfG3Sjd0AWILjPJqc=;
        b=iQCevsRNirYMH/HjWumlAyKUrAKgk8FyN7AjoJi0IGu5Fm8jXEdizElLN2UAL1zppy
         HXLgqhBX1nqwH3tWfEMPDDZS3sWHQh+qe6aLH90jP6m/os7mcjfLUhaRLPY8z6+Gdvl+
         H2Sx9y9TKskGHzCL6udhEp6uVFvOOJg7GCphopXUVvDi61urynNac1HGkurdtmWuZjJK
         UzJKmL9lX1ZmC9a1XVuI24SZ+IltGNtiNr76oGzijDZ1J8UBfCvR9Gg9ao3WfP/4rCb0
         kE1dPmb2vHRtGnSN8qvGYaK/XrQ2onAcupH7kVL2gs/Ap19iHSlngQMlubglu2MN1qd1
         0YAg==
X-Forwarded-Encrypted: i=1; AJvYcCXskFILD/yIuy4yAT24ReU7tImlxUX9kZSIx2RYONgaTpNSxRN7T5H98pZXQ8VGChE9NUwHLDhR1lDm@vger.kernel.org
X-Gm-Message-State: AOJu0YxVHteZLCXHbMpTaLGNDhn4oSNRHNtqfa2qyoyRk6umIfCrcPrY
	1n2okacjRIbD/8w69ogxQ//dlvH1HBJaEI8aVxlunzTCI7d1j5RSgRod3kGMkJ8okQSGz4DMcWK
	p13vYxioyFjGbcJZ5FqJRV37ZZpEJsailGXQcKdToPACu1cfvIeby3/uZlLwEC/zf
X-Gm-Gg: ASbGnctkLau75wn0b7u1k0impOG/n2j5nMkWcUAoBnV5oEEEdbfj6SZGFwpyxMMMz+q
	PL2U1Rfq2fcc1SYLZf0ab8GqDJxTUkKP1lPYpV0y6k703xXxJsZRTAqUmPb4j3Gr412iTiwHTpw
	lpkxPK4bHANxXbAlTb1Sv49xIZyAn9U7yfPJSNAaffdHItE+qaKPG4s2o2EQ1GGY87jh9jYABZq
	RwP0OwROBPHon8y0lyXkjq2aQ7gnqHT1jSIldWHo7D7IZ5QKE+VeHXapdlluvC/P2XtjdZk3Uf7
	A0UMbNe7lCvbu7fqcrNV22ukntsBr9HqaTqsWzRGYBeK4UQs5JwI58kv0MntV8w8SxeQmtOWfhi
	+sRCIwkX26N2xbbs6VBBzyLiPjaUk+XwGAl4HyibwhRib+/k=
X-Received: by 2002:a17:902:ebc7:b0:295:54cb:a8df with SMTP id d9443c01a7336-29d68421e32mr20341365ad.36.1764751023209;
        Wed, 03 Dec 2025 00:37:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHqcQo3FQq17q7z9kTvLBzxRmh4FssFp2WXvF2CQCr/ROBeeRraRE9KHBnL1Z54xJy2ZTvJLg==
X-Received: by 2002:a17:902:ebc7:b0:295:54cb:a8df with SMTP id d9443c01a7336-29d68421e32mr20341095ad.36.1764751022714;
        Wed, 03 Dec 2025 00:37:02 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce41785bsm175707985ad.20.2025.12.03.00.36.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 00:37:02 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH 3/3] arm64: dts: qcom: sm8750-mtp: Add eusb2 repeater tuning parameters
Date: Wed,  3 Dec 2025 14:06:29 +0530
Message-Id: <20251203083629.2395451-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
References: <20251203083629.2395451-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: n6_ObqfiD5i1TvJ72XqVoWJ0jR3-cITe
X-Proofpoint-GUID: n6_ObqfiD5i1TvJ72XqVoWJ0jR3-cITe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAzMDA2NyBTYWx0ZWRfX3BbX/NGjUpbw
 M20Ml2rIlXgLD1xjZE3OLZ77pLYRdW2MXMlgN1VeDBEl6z1Ig8NQlkbQr6SET3j/OqDsyHpyCsx
 F191effyCV+3gsye4QaFyxqH2HWUfozIOxy9cIk0qZT0lL1uCxa8hbr3H3VRwe5lVZvp8+5Vdav
 kSKvTppicf0J8oGjz4C6Z1q3RTTXGvthkOYoaeDK/3Ssl32CFCtpdVW3KzsY9nVXlHWbUqaBlfn
 ZxnMvl2etWnaKkVelltroLYg2S5rCsaQaJIsdT7xjoN1JN/kJKNHZM7v4H6ALrEmGsnLsVk63B/
 qjz37HnY8u6Vd0FqMkFRwAvFH+YJBXrc1qMuU0K7RuojMyxNfO2DQrd2gLvY48nL/h+Lc60fE3c
 7mGIIITEuuDSLOQ/T6o2imR1dIbu2Q==
X-Authority-Analysis: v=2.4 cv=VoMuwu2n c=1 sm=1 tr=0 ts=692ff6b0 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=-Z-y7UPfJgGHtBsD8n4A:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-02_01,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512030067

Add eusb2 repeater tuning parameters for MTP platform.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
index c8cb521b4c26..b9a4d1c99816 100644
--- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
@@ -1041,6 +1041,10 @@ wifi@0 {
 &pmih0108_eusb2_repeater {
 	status = "okay";
 
+	qcom,tune-usb2-preem = /bits/ 8 <0x3>;
+	qcom,tune-usb2-amplitude = /bits/ 8 <0xa>;
+	qcom,squelch-detector-bp = <(-2000)>;
+
 	vdd18-supply = <&vreg_l15b_1p8>;
 	vdd3-supply = <&vreg_l5b_3p1>;
 };
-- 
2.34.1


