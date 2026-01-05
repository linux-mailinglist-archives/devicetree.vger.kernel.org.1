Return-Path: <devicetree+bounces-251500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E3FCF3D53
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 14:33:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C4AC6306CD99
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 13:26:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C22A8316199;
	Mon,  5 Jan 2026 13:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DBGByWbl";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bbu0DIg6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B153148C7
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 13:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767619278; cv=none; b=ep0xpnTHfbH3BB+r6rLz2/YFUBr27RVqElPPLZiLUx8pQnWuzg9chPD6ixeLY3ZfLqDNhH5LqEGtZNo7wcoXKWUeC3TwJ9slHte9M/qJrBF8PJK2DWuLum9YDFywsMEEHUFVCIwsdCFWWYQ3PWCJGgjW0gN2yV/EwstfnALGOxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767619278; c=relaxed/simple;
	bh=FBTZ8+7LvoIsF+AgKhfu2oeaJF2Dq7lHkP4MR/E4HT4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GSX+h+Ae8X8IuCiTWXQy1rfehCRe6EHhNvvRqxR1tbqtGIRhhxz8wEQGVbT7gW+s/j8vp2k8+yf91ch+lyrRHkRfhg87o+9m3kEx9qNx0mIyXsLy0+Hla9CQeCt6wg9U4YZRjcqrhTkLRLeteNpprIKfgHS4YHP8BWTeZwv+9zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DBGByWbl; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bbu0DIg6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605AYUTx936760
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 13:21:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=MIjPXN/R7lTAMQyxLIdd6q
	T0iyatayMM5Bo760ZcfSM=; b=DBGByWblvu68QBi5fqcn+NJiF7P+mHkA4sSAcO
	2onqps4OJoZePc8gZxH1mcchA1a3TfSTGLtQjWuxd0mIBICI8oKSOxmwaw85qHZP
	osAIdIZNeRfgOYO7opTur0ewQXEU/IdddpKtm+SADVk3xCUibwvpkcyZOvmc3/XT
	vPfB06OpYpPlg5xIW5Mx7M6htfHFmBgTj5NYzXh3yzVM3Kh6JJnjSniZlyM3z6xU
	zaIJipO7Kbeo4EXXUnd8OBjo1mZiYG+o8OPRexvQixzD1BXBTNa6U2iiItPw74vV
	6GUemb9UjrmHmP9LjUwmTTnwvMh+GADEHJiVdFgzUK6/mShw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgbnv8chk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 13:21:15 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a09845b7faso215298715ad.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 05:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767619275; x=1768224075; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MIjPXN/R7lTAMQyxLIdd6qT0iyatayMM5Bo760ZcfSM=;
        b=bbu0DIg6qA47s6KleiyZRdxeRLEs1DkkX0m0XEExcqiDL5qDpcDweYDt8rMelAQGeh
         wS9HtCLHY1QcJEyUT0KM54auB/xyNwI4jHBjqk/d7dMwQPPPVLs3LQZvy2q/6q2aPvxs
         Kj/V+Gc8T5GNdXUN3/zlxsKlIdhVxekpTB9dfJwH/zSLYI7PWhvv+VxsQxoOHPteENEC
         sBKXAR84fPs4gMK0efSUfvQt4ayqiEgt8IyRKNGQbFg1ALjhbaLnWA8QBn0IM9UXiFaq
         k40616sQtBF29GrGfBYqITGKGr6WgomsUNycbTHgIBIkbHcrXAxYKd8qi9RaiFo2eQnM
         TBrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767619275; x=1768224075;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MIjPXN/R7lTAMQyxLIdd6qT0iyatayMM5Bo760ZcfSM=;
        b=DbAWx6WhelRY9zfZBYp0PKO2ojTia7+w7IyLDzzTQo1MjXew1HasWE4t+EVrvmRyEs
         odkQcnub4whYhzOmN/5oe3EAndCSVWJaK4XjZRpIAwMjP5C8pl11bjX02QwF00VT8/dr
         qIWycCot0zZX7AQ3HuGzdRgXQTTMaycV4066IAnjNAhnfoZxjUpM3iiZGBTbEGZuLf2u
         4T3QMzQtdzwXIefqAMHt0ue3GfVoS84bQYRpIaYYQxLrTnJ+jNhJjo/AGU/9jjvKNBG9
         x4Ee7uJRggYn8mQKls3qu7k9A/U2lwpF4c9GceebpQjUeZ4kLHdZukfoKZrdH+qDQRkr
         sVUg==
X-Forwarded-Encrypted: i=1; AJvYcCUZsIV4eC3Vc5VHdMAABis1RWEprQLzEjV8ZagqZS6i0dQ4ifknJ7xB1xVN1t+QvPDXUfzv6z2Q2ber@vger.kernel.org
X-Gm-Message-State: AOJu0YyAOgTviKTHEL2D+52sX9uCl0wAXVXsObRn/tGEn5/sGVegkyCk
	TalnZsV81tqWC34tupEzFSHxvL5hsaUnScejghE6HmVGSx0O6d7NCSOmTWD/UBJPjhBMccUgVFZ
	5Fvh51qpDnB8xPwxYVTVcMiAaR+0nTtKrRt/IJJ6GfcXfE2eulRSP4eSfVKdkUdHUnGtqoBxcBr
	A=
X-Gm-Gg: AY/fxX4t7xkEUzww3y6ZDRxRsxpoS1mhmv0+2XkMAgDH4YmNbI3+0n5886tOTk3fPw3
	g1gstyMniay6bvlxARz9j333dItz40hwXVvOP0GChvyEdtB1uDSgaaocqwzvGK24Ah4wti6NVn2
	nXkgIpeXyVJBJgpf9k2c9YQYh35RP+QLAkx6KeIY9iUPBQcuFUIrMVjQuZa58QXc2BWYhHdl/ab
	5txNSdaPCl2P3xg19WNtjxyAtkEO9ltGstV6q757WgPxF0g951w4axwMmQ+mmWfY6v5C9UhmxNx
	QHOnGBpjy+1ICmV/oBsc284ZXCPyM9jNyOvucmyY4HmQmXQ2SsIpBtAosAEVd2PmNe3QljSYRFi
	DMRXPc1PqHBkwxmOhtEVxo2wqiio2DyDgi95E0cNXpVpgijMwCMOEFlVYf3/jCUU0iQw5/UQtfQ
	==
X-Received: by 2002:a05:7022:6290:b0:11d:f440:b758 with SMTP id a92af1059eb24-121722de94dmr60837992c88.25.1767619274568;
        Mon, 05 Jan 2026 05:21:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFi7wwgXlgpNSgQhXunkoDlw8+l1BKCGdKng7r815BSVKW4edu0QNsj4YCyHm6NQU/E1rLaaA==
X-Received: by 2002:a05:7022:6290:b0:11d:f440:b758 with SMTP id a92af1059eb24-121722de94dmr60837968c88.25.1767619273931;
        Mon, 05 Jan 2026 05:21:13 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-121724cfd95sm165866042c88.1.2026.01.05.05.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 05:21:13 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Subject: [PATCH v2 0/2] pinctrl: qcom: Add Mahua TLMM support
Date: Mon, 05 Jan 2026 05:21:09 -0800
Message-Id: <20260105-pinctrl-qcom-mahua-tlmm-v2-0-7ac036f700de@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMW6W2kC/4WNTQqDMBCFryKz7kgSgy1d9R7FRYxjHTBGEw0t4
 t2beoFuHnyP97NDpMAU4V7sEChxZD9lUJcC7GCmFyF3mUEJVQspFM482TWMuFjv0JlhM7iOzqG
 uqlrr1lCtLeT2HKjn97n8bDIPHFcfPudRkj/3/2aSKFBQ112l6cWtVQ8fY7lsZsxBV2aB5jiOL
 /ffTifFAAAA
X-Change-ID: 20260102-pinctrl-qcom-mahua-tlmm-433644bae64c
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767619273; l=1372;
 i=gopikrishna.garmidi@oss.qualcomm.com; s=20260102;
 h=from:subject:message-id; bh=FBTZ8+7LvoIsF+AgKhfu2oeaJF2Dq7lHkP4MR/E4HT4=;
 b=115sBtkA56uB6xtdPLDa0Fre12/Rff8ztKCWNYacDhtC2p3j5bINgRfjWJ1GvsizPqfOXWikO
 4j0Iaa2BDnjDGSlpFn9Ncuetp/r67wSYyZt4DacZbMT3MRv831R4mJp
X-Developer-Key: i=gopikrishna.garmidi@oss.qualcomm.com; a=ed25519;
 pk=TkSjNEhrfsj90i3wkABTZtAjLNr2cfYsujaTvyOIDsE=
X-Authority-Analysis: v=2.4 cv=I5Vohdgg c=1 sm=1 tr=0 ts=695bbacb cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=4Q-EQNNWwN3BBnYOq88A:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: GJm7tjJMeGkNZMOXTZDQOINrw6mgludQ
X-Proofpoint-ORIG-GUID: GJm7tjJMeGkNZMOXTZDQOINrw6mgludQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDExNyBTYWx0ZWRfX92zQaK1Z958t
 pvJnUFeUU5v3eHx6JGcyS04ZGiRITfx3L8FeQ0f860n/smUz8EcUDRp84TOgck8Ank2/eBCqk3D
 sGs/V+AGgp7Fz6KpA48RR1vVo+fDrivkvgLUOf9miUSHb0asH7zVEjWFJvbwIEqfRTudTbxIVp9
 FZ6rkci0UZm3R2iecpM0MDZhvlPaHs6XhbWi/Rl5yCKdUmP74lJgn6l5OBMXCYNPhcpb1Oud0Yl
 TkX0R5bhNhV3xCjVaMmXXNXuBsELm9cqT2rqxO0n19ZPUIBT2boZOXFwEYLGVzxdCa372Vohg5d
 V/7o/oAyT3UajImYRAl5aXBK8co2nB9S1PcwOPIKpMikUdGDkbvXda4Nd5AFFenAPdEc5wlqFcV
 YuBMwlbxc+soJmpR6S0se9kvik6v1e8JyqtdudWcCrxj8380A93kgguebAOPVodW3WepXo+Lcip
 pxGzZxAv96uYEtU+cSQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050117

Introduce Top Level Mode Multiplexer support for Mahua, a 12-core
variant of Qualcomm's Glymur compute SoC.

Mahua shares the same pin configuration and GPIO layout as Glymur 
but requires different PDC (Power Domain Controller) wake IRQ
mappings for proper wake-up functionality.

Changes:
- Add DeviceTree bindings for Mahua SoC TLMM block
- Add Mahua-specific GPIO to PDC IRQ mappings
- Add mahua tlmm soc data
- Enable probe time config selection based on the compatible string

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
Changes in v2:
- dt-bindings: updated commit message based on review feedback
- pinctrl: drop GPIO 155 from the PDC wakeirq map
- Link to v1: https://lore.kernel.org/r/20260102-pinctrl-qcom-mahua-tlmm-v1-0-0edd71af08b2@oss.qualcomm.com

---
Gopikrishna Garmidi (2):
      dt-bindings: pinctrl: qcom,glymur-tlmm: Document Mahua TLMM block
      pinctrl: qcom: glymur: Add Mahua TLMM support

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml         |  6 ++-
 drivers/pinctrl/qcom/pinctrl-glymur.c              | 43 ++++++++++++++++++++--
 2 files changed, 44 insertions(+), 5 deletions(-)
---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260102-pinctrl-qcom-mahua-tlmm-433644bae64c

Best regards,
-- 
Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>


