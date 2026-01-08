Return-Path: <devicetree+bounces-252561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AC318D0114D
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 06:28:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CDE930305A4
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 05:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7FBA2D8DAF;
	Thu,  8 Jan 2026 05:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B/FqIs35";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N4b4I2dy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A5227B4E8
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 05:25:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767849910; cv=none; b=XT9yXgocFWiWQbEePUVIrV4RX2/e4868UXT2aaFTiCLUn0asxruEHFuuBwtGUPwCuN3CZlAu0+h7Esr7PZHus10qoIGo7XSm//8vlCc5Q0PUnQz8V7i5YjDPLGwpOkiZFv2TukfACmBrX3tD8KA20mTgr4OsM6RaWuOgl7TmZlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767849910; c=relaxed/simple;
	bh=IMK3zv9NIjugam6340VLEJj1mdGgqzHLgIjpLYgNc74=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KNbOCqXKAY0AYXMzZZpnh2Nx9lGqOpb4/IbeqGoa+RT1rDvNdAQBGw/J4OiRIo5llryitb4KKUNpf01Ds7A2qeQE/bA9O2F7VJQwSkvJJ4KsrkafK1DOswmG0+w7RLOuFyeAEBzKg5xEyiHhb43JtOWKPg1/k0eG45i75KvS2pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B/FqIs35; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N4b4I2dy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60846Arb2779224
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 05:25:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=h284+dPa4FQpjAJBeqsPnfaBl5y8M0qOC6M
	qt56lPbo=; b=B/FqIs356xrsX8RSWtefKWutC3ITd9nvA2KWabdxWNmEW0dhIIY
	FR7noES8oCDnNnVHdT2K1cvgtX1PWRAEdqNoWb19GhSu98/dWBwADjRiSkxXQB5n
	ZUdK1HnbNQbkEnE+to0rSGkWLI16J1s8DiALMpd96LOkeUwSgbkeoFC1ryVplyan
	LJuGk/VfDtyRqFbRbMmpLYfviDH/UFozp1aqCACshEVlYdcDOKlJf4nI7Ok4m0hh
	+ludwIWYes/6wpvmIKJxi4dsOC6+1zGxJnNbPWeI7qs7zGRiYEwWKorGtUmmi8E4
	Ju2LPIrQ3uQ7tQY4L9TJXupPdxl64WtsJ3Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj58ug6ca-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:25:07 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-81c43a20b32so801647b3a.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 21:25:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767849907; x=1768454707; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h284+dPa4FQpjAJBeqsPnfaBl5y8M0qOC6Mqt56lPbo=;
        b=N4b4I2dyO8NRrrAJNqUYtwMefZwHAJ3xNflUmeO4d9MInVfGMk46lboDTT/XsmmQTC
         lAzM9szAkLhXiyibBjCfyKFJqu3U+4K+G9+cW6k7CDj2eX4ftrzMhgOcwWWDv20S+9HN
         k5NK4+MNJKwseMJjwRra32HrtZ5jUjqrjiF5s575ESmN6GvnuaYKWiPWdictXCyEdv8m
         ENIsrRK2wVNVVAYnT5zUGpgeW23wWOUmU1mVg0VEt6evUjf0dkhqQUvq5r3+TloovTRP
         pYA8DaJYys3S9b0arivRqbs8isEMmnaMNehahJbFpjHj2J9zfjqYK9Rdix2UefiQBZh7
         bzAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767849907; x=1768454707;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h284+dPa4FQpjAJBeqsPnfaBl5y8M0qOC6Mqt56lPbo=;
        b=JIU5zDR99FHNLZ5Pjxyt0fffQ9SYOT0ptqWfeY7PKfKAEhuXCW7lwSlWIrWGUmC/5f
         QwxK42bFcsR2eEXjGq4poCdURcgFPpTI+td8SG03iZeMvza4NzN6YtqbUOlutZ5he0P/
         HT/PFqAYYhsZaa60QaxMxBJTs4z5nXco1SH6qf/eaAYUPW53JHPTVr6pLJ2wSVsecz2q
         i0MuSsVjBHaWKcYpThsT63kBE+jd3gOU8uk9y2j+oYIvTUN9Hn4W8bLwLhvwune61f7d
         jsVXjntHsuJtAb9ChM60zwp8wJeMFbZic9VVYGZa96K4UeIuxsyV1QLq66rbEVPiAT0j
         QRVA==
X-Forwarded-Encrypted: i=1; AJvYcCVm/A9Yf9y8fd/zwBJX0gVyHFSy/KzNZTYjVO6zOlH+5rly1zT0mEeZVNbHKKdH1PGLPGbqPMq56CNS@vger.kernel.org
X-Gm-Message-State: AOJu0YxUy/u7TXumWR+BH0HzOlmRs6zMGK46mryFIU5QILwh43K0czEH
	51ByN71ZReV14tooe+ZTSNqy8KHDJS494mowveIhbGnEYgtLXmyP1beJKT83aGn9VN4lPLvYnUP
	spmtRN0UDQRLN6OU4CsEp/CARYw2n8Cgz4mKRy4QS3Cs8i5TPQHqrN0wLywvjvmTb
X-Gm-Gg: AY/fxX7DKgbzFxwZ4DhTb88ubvYhf71uI5DqCNKJd7opSfoUcxl8yoDZIySai2PiczZ
	lixsnRqaY+Mu9wZMDuYSCPhgYtzJvBO6IkdTNcXlGl/O0fRoVM71rVfWlnaUuYBiqO50QGMfVlB
	aKoQEpOr5JFn7k+Tvuk3bYsO5xg1UyaMhC4vvnTQQ1pr4IjHMEdTwQiRIDO/FcVeIxNesb+P/Lv
	6gs8sc/pu7leQMyfQcZyeRC6VHAFzyO4b3wB4p7b7Cx8wQ6pvHyZz+EWyXstdMSbF9u/vlr7HtC
	OXSZUQigiJbVnZy334rzf6mUkFQ0MNPgD2UP2/jARIvPkgx6H0KatrPgcyd+WfLqx5FBeypw2lc
	DBF+7Q9U9WhtDokWpkcXscFL3aJoGB5aj/nUlGpEPLj4NO4o=
X-Received: by 2002:aa7:9a84:0:b0:7ef:3f4e:9182 with SMTP id d2e1a72fcca58-81b7fbc8cdemr3936901b3a.47.1767849906959;
        Wed, 07 Jan 2026 21:25:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkC50Q2aJ655U+CHSbpfZEuTeYv1otkG2hAbeVnSEOLGvnwXr4wGCcorPHoMILiev+qnqiww==
X-Received: by 2002:aa7:9a84:0:b0:7ef:3f4e:9182 with SMTP id d2e1a72fcca58-81b7fbc8cdemr3936866b3a.47.1767849906466;
        Wed, 07 Jan 2026 21:25:06 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb0de2d2sm6415534b3a.27.2026.01.07.21.25.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 21:25:06 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 0/2] phy: qcom: Introduce USB support for Kaanapali
Date: Thu,  8 Jan 2026 10:54:57 +0530
Message-Id: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDAzMiBTYWx0ZWRfX/S0EI8b7v4c4
 G8RByA+ubK3eCAW4jYqBg9UV2Iy+tikOsAMRJfGfk+RlFd0EI8PHy40wJ/9tecd5sFZVduisuqz
 TqGecnzLFjIgeI2yTXMy1pq7m6sPfMybr/mPNAhCMx3Ekz0w2qVxC2HNYRycLztNXwrIp1qMI8X
 bSinrjnoL2jLuUsZ04x3L8hN1h8iVnDAXYup+gkXmPnTFHwRbG1jJiPBVSam446JG1RyA/ufaKC
 qCtLgXA3HNMjXNJNmeIstNYNQEVj3PdWguPD0Z/TSinbxvztxTLp0kIXQLQEFoRTESlik8HQHDg
 zSn7FHKIwjjzlLFalHeJqexYpJD8yy5RUyCbiPZis9Io5+2aJkVB9LGJHvF/EfuGBgash+Ywk7k
 CfgKl8ogCXIb1K/9wj5FlgfNNB6ou4k0lC/55V/PXTjfv0RAcMm8kx98Mx811c+so4hMbhvkYeY
 GAweEIO9hgPQw93CRuA==
X-Proofpoint-GUID: CMm1e69n5VbRySb8245rd4mY7zOsyu-g
X-Proofpoint-ORIG-GUID: CMm1e69n5VbRySb8245rd4mY7zOsyu-g
X-Authority-Analysis: v=2.4 cv=CMgnnBrD c=1 sm=1 tr=0 ts=695f3fb3 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=JHePba-_m_tI3beqYUIA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_05,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 adultscore=0 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080032

Add support for the PHYs used for USB on Kaanapali SoCs.

On v2, the usb controller bindings have been split and v3 was sent and it
got merged.

The m31 eusb2 defconfig patch also got merged.

Changes in v3:
- Rebased phy binding since glymur phy bindigs have been merged.
- Removed RB tag of Krzysztof on M31 Phy bindings since the changes now
  expand compatibles list that use sm8750 as fallback instead of
  implementing the fallback.

Link to v2:
https://lore.kernel.org/all/20251021-knp-usb-v2-0-a2809fffcfab@oss.qualcomm.com/

Changes in v2:
- fix author name typo

Link to v1:
https://lore.kernel.org/r/20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com

Ronak Raheja (2):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
  dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for
    Kaanapali

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |  1 +
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 58 ++++++++++---------
 2 files changed, 33 insertions(+), 26 deletions(-)

-- 
2.34.1


