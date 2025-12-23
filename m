Return-Path: <devicetree+bounces-249199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88575CD9CEE
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 16:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C73AE30CA12C
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 15:36:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D1F52D192B;
	Tue, 23 Dec 2025 15:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PVpWRIP6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ep82BO4d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D12429C351
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766503570; cv=none; b=bX4uA6TXlRbd3wrtnXLsWKSk8Fzv27peYN+G9ICMEV5uIjUeQyJNQRmGsXgJ7wwmiQqj0MIYzbNrjaFnr3wyH2nNj7QYrjjImQeJpK17ahABnV2wpX9xkFOxn6UzGeHQcc1K0JA2GQDaQSTAxOP3nRwa8jvDGkBiFWqlK6YXGFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766503570; c=relaxed/simple;
	bh=Nb5cz42qvJQ7hyn0jX756pVrOq5QEAsXNNZgRqRzhlA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=a9w6uRa7Z7sRgp6dbEJHgtgnwwusJR+iR6GPYIOsHE8YzEhfNua/hJf6+9NTnUlOu2VKQNiBAnMUdTCyxKAafIFxAs6K6U0+LMigrDyJ81e8D9n48+wsU4qI5t7ui4E4VVuVq5B5qHOBa0fupkAYY3k2pSuwMUPS+9LWWhR3jGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PVpWRIP6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ep82BO4d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN7fjOB4044111
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=loserLUTki76e0mv2DkZGtYk0KYhHV04tTK
	M8DpaI7g=; b=PVpWRIP6UmMYN9Cw4895uXqGxuVDY/JHU9IizH1f6DPnEJQhZZ5
	QVY1xnAA8phDcrshMfb94UtEpj+IQbvNJNwY2Yn40Yn2oOtoziFhh1L5vKuUDXG/
	IztmsvMiy0hH5p/kj6ni8g77lbJ66rzZxBu0QcJLW3VPgb2m/v5v6+n8+jkN46EW
	EpGC3Xa+UQl4oNVdjFMzA7Wjaw0oHi8G4qPyUhnR79nGqc9an5jW/6LfN1rb7Xbc
	E+0tiEsxgeRmstYofVFIdgdvklXY4ao7OHe7RpkaEu0yak3qzy+vc+4iXiZhRL4v
	K8EEMm3QSWqr93Yu1yJZr/YuiiikGHYwZtw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7cuhb2v5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 15:26:07 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4f1b39d7ed2so112095101cf.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 07:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766503566; x=1767108366; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=loserLUTki76e0mv2DkZGtYk0KYhHV04tTKM8DpaI7g=;
        b=ep82BO4dni0Y20tZYmDl+mwOIcboiLUgWmVfmDhgAVS5oXEM/YHrhtdbBN1gM44d0t
         x7jQ5iV0iozfHleKfBszq3VVlary3SiN30trx74YqLETHORu+ejdJCMV0aS7gHdJy4f0
         JDNiCqi4vUOwKy/LIjae8DHjLMBzb5hHzcyU44eoVgSUHkyK2OOoqQE7qZTO3nbxnBP0
         fkAUjdPf7qqw2zuGTL7Y7MCQz5fhBz9yXXgkRZZnkG42tFRJIGL6m48qRzKSDBZiygdW
         msP34M/fr9kHMceJ9rzObd/aqn5kjUWvC0FOvgo1NEuzRL5atUMTiDdl6y9rmLrtN5WJ
         WNDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766503566; x=1767108366;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=loserLUTki76e0mv2DkZGtYk0KYhHV04tTKM8DpaI7g=;
        b=B5PZ98tHNyYMcA25xOhZ/3SPYtD8alQdQsJWXqbEiMr2uElbM+/WWlsXuGMUXMxwqt
         bMIBwOzGGxtjYp8pKNkF0K9tjv4eESHga9lemJdHMTvTpsCtBWCKrqq3jmYygcBA0SmF
         tyKvLb1uEKDwWzSYJ+aWH++yzCoiOdodl3qIdErZxYyScgOkoqzDuV2aN8PGu9MrwakO
         1S2pBFJQLCAmxXa48oQUrS/fMUNZQ3oni1129ZWtTYiuHtNEbd3cOhBFwxDP7lhNxq4K
         Mr9YaPxucWv5QiX8v1HMcFSrCIGD/ey2MUpCvLSPW9HcyDvSut+AAbyN7gsO1nk2kjOX
         ATzg==
X-Forwarded-Encrypted: i=1; AJvYcCVh9JdxPSxbvpqWwalmn47RLr9mN+RwsFNIMGmc9FQuVlFCxqLGqcWh+lT61SWTNfJa11YAUiqHibix@vger.kernel.org
X-Gm-Message-State: AOJu0YzgQYRpPd7KdSqn/Jj+MkjsXJA6t+LXip8AkMnQ4EPKgvVtHdCR
	SIoHxtvw8CbezPAflW0yxTBc07HTstpPTa9oOKbX28uyZgbZ2tkv3YANbw2ksusifJSKv/dIIwL
	GN04Xqn4b5jhBAHwwwrmVUer4OCEz6c+d8YA+C8BzV5hq6HLGM5Xd70Zpa+Hd64lC
X-Gm-Gg: AY/fxX7xPRvA9klmzPX05qvlXivZknn86JCqM16P1eaUWQAb/h44Xkhyl0wKejqj+ms
	BpDUbtfC5j509QfCZ2A4gFTiy8DwwlYQxs7asBBgRsVmuKyxQ8Q1tRTdQTJ+fRCHjExmWWsyaY1
	wTzjv7yyqaI4MhZLuz0LNO/gDfU3r5NEn8mi6/nCb+wOuZviNWVznLZdnD2hPWv6N0GGDW1dUkn
	Zx456ViJFZhxcGb16q8v8g87VZF8uNhrSNqBU2WwyqnZZ7ZC1vvTd+i4FL7oWS9659Zluhw/Zl7
	HHFeTBbFTBhDH2sKDjSjbOxBSkYOHkKMbCh1FEq5COZNdE+WYnRxsUqlLDr5IQw+Jxr5Ch6hqsO
	XapSv2C1wY7nMSPapjjw/HgFsIxCn8Y00tdM+zZsvoxSiXfV2AwrtIoVh69d7IcitNCE=
X-Received: by 2002:a05:622a:5a13:b0:4f0:131f:66fe with SMTP id d75a77b69052e-4f4abdb3a07mr199218991cf.59.1766503565981;
        Tue, 23 Dec 2025 07:26:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHZzkG1ybsE5+jipmRBJynt+75FLhzoKRzkFARG2q8zp/VVHuNkqHHEENXiKc4+6iU/nKm19w==
X-Received: by 2002:a05:622a:5a13:b0:4f0:131f:66fe with SMTP id d75a77b69052e-4f4abdb3a07mr199218471cf.59.1766503565443;
        Tue, 23 Dec 2025 07:26:05 -0800 (PST)
Received: from quoll.home (83.31.98.88.ipv4.supernova.orange.pl. [83.31.98.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b9ef904bcsm13268409a12.22.2025.12.23.07.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 07:26:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/3] arm64: dts: qcom: Minor whitespace cleanup
Date: Tue, 23 Dec 2025 16:26:00 +0100
Message-ID: <20251223152559.155703-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=11615; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=Nb5cz42qvJQ7hyn0jX756pVrOq5QEAsXNNZgRqRzhlA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpSrSHJI5icWyjEBlsRRKm5n6Up+PncqPkZZcQN
 vEywIlfjwaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUq0hwAKCRDBN2bmhouD
 14d7EACNe0LrNQdN1c2/JZigzlDY/MALN978W5K+DPLci2F7CQrCUKpHUp637SfA7KrXGIBfNOR
 6VjRKejnwZ2yE5zuHzslfPlksWzU8zSZbhvLKUeIWbi1aUnkzzo7D/hd0GUslyu7BG1/4QATOOw
 uEqQ2PAmtCbfiEPhYJqmjPV988n5zBHvHRqrkJYAskHVv5q/FikbegahhQtW8cMBJEd4hS3g3Ej
 PzZdCxjhoOKYoBI81s3G+hjNzQ9PI0O1ds3ioe66JNpeGRO3GzxF3hCo1JaUnYtiaNhBTB9Gq+y
 /ZXjtPFPKceK28Gsdl+MhEtMDqH+v8oNHexiF32wkCa5Bhy8ciyE32GMI/8YWsi5RwNPzu4epiK
 1Ev2oAYmNn5/o8N3VQkN9bg0Tpy4/eVcNxURl6fOAvnuHHuWXUu2hoQaF7y4nLFuHtRWRu8cHmw
 D4e/FDsASlQmZpXPeByN1kb7feN08CeZldfIiQijTDjrX+9V7lrW6S/bgkwgtexX25WmP0XIorg
 NNuB7Y/KcF+bxV7sWEGloo2ywKNPgyOk3vC1VWCn4scDl7Phxa+CVwdBZ0pkyQvYAgb+VAy+/nV
 FwfjWpD2C0rwfvZIqmghT3WRstUt1OT3NfoWxsq4UbGIixN56nRaZke+Nr+teWoshRtpUOV9WM3 GVc/v+FEm/F6y7Q==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Ghr5lNBRdEqGsg6L4hIs47S4NFUlnqTI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEyNyBTYWx0ZWRfXzjRJly1PrShn
 1sGKu0jG7y19pgvpzJ9kqhbCagkOdnbT/1mbvkJNn3Su9T5mV0tjELxkZCub1TOqZZ2O7ZuEBYJ
 McPO/bqqfSpQvKedgP04hEvXAB53PoiVyaTrSAmLHEs3vYcgPBDGvvw7B6I5OkXkzcdU7VIffex
 9RLmEor55zy2QHugA+amPPl8OB6ilE/XhjdC//qjbmdatHFjq6WQbypQTDMYLJLzK1Z1mJKc1M0
 JSaEnc229Dd9LQgofRPRYZ6xK1RBY70zbxb5iWZ0/OloMHda3ma8CLWAur2ISi6Hj/uBY2y3UF+
 V9RIEKkM2PDE9cmcRwCSXb8kCJlpFS7CYsAD6vUHA8xWP9H10LI4G8fEoS6E5+wpw4ufvtLxKik
 MA12PuoSZjwztX87g3inSmbXnCIFXJV6bRWIefN9hx+xB7kn+z4IATeecRsmanyoNwBsCmihck0
 /qrc9BeOv4VHk2yFwbA==
X-Proofpoint-GUID: Ghr5lNBRdEqGsg6L4hIs47S4NFUlnqTI
X-Authority-Analysis: v=2.4 cv=NZDrFmD4 c=1 sm=1 tr=0 ts=694ab48f cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=qe4J/qXhiWkb1JZGYKbLYA==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hlyClpkOwkLfOEj7GOUA:9 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230127

The DTS code coding style expects exactly one space around '=' and
before '{' characters.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Patches done with sed, verified with comparing unflattened DTB and
dtx_diff.
---
 arch/arm64/boot/dts/qcom/kaanapali.dtsi | 226 ++++++++++++------------
 arch/arm64/boot/dts/qcom/lemans.dtsi    |   2 +-
 2 files changed, 114 insertions(+), 114 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/kaanapali.dtsi b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
index 51f8b3e0749c..9ef57ad0ca71 100644
--- a/arch/arm64/boot/dts/qcom/kaanapali.dtsi
+++ b/arch/arm64/boot/dts/qcom/kaanapali.dtsi
@@ -1100,119 +1100,119 @@ apps_smmu: iommu@15000000 {
 			compatible = "qcom,kaanapali-smmu-500", "qcom,smmu-500", "arm,mmu-500";
 			reg = <0x0 0x15000000 0x0 0x100000>;
 
-			interrupts =<GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 697 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 410 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 488 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 490 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 492 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 493 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 499 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 500 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 501 IRQ_TYPE_LEVEL_HIGH>,
-				    <GIC_SPI 502 IRQ_TYPE_LEVEL_HIGH>;
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 181 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 182 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 183 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 187 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 189 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 190 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 321 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 322 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 323 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 324 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 325 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 326 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 327 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 328 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 329 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 330 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 331 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 332 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 333 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 334 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 335 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 336 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 338 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 340 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 344 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 345 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 395 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 396 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 397 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 398 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 399 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 400 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 401 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 402 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 403 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 404 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 405 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 406 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 407 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 408 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 409 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 412 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 690 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 691 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 692 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 693 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 694 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 695 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 696 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 697 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 410 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 488 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 489 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 490 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 491 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 492 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 493 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 494 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 495 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 496 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 497 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 498 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 499 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 500 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 501 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 502 IRQ_TYPE_LEVEL_HIGH>;
 
 			#iommu-cells = <2>;
 			#global-interrupts = <1>;
diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24..132fe92f179e 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4928,7 +4928,7 @@ mdss0_dsi0_in: endpoint {
 					port@1 {
 						reg = <1>;
 
-						mdss0_dsi0_out: endpoint{ };
+						mdss0_dsi0_out: endpoint { };
 					};
 				};
 
-- 
2.51.0


