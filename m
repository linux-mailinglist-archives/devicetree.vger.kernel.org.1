Return-Path: <devicetree+bounces-277119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EImOMvmAumldXQIAu9opvQ
	(envelope-from <devicetree+bounces-277119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:39:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FA02BA0DB
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:39:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C82ED300C304
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE3F238F247;
	Wed, 18 Mar 2026 10:39:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jX9JkzBD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EFsUSyqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7D9373BE4
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773830390; cv=none; b=u099dRPT0S4CBMtGxt5WCZoIeGhhVcNWt3/fjaDjn04hR13+nCrUNjBuAF3f3wccBvXbYf3pVV7fd54+Xt2Kp8MHCzLdIfznM/n5rXKKaRGrz/zHgrZgTGJw1x2txQ1P0dRzmFBdB6xivE+KvnDTk7r0uWa24iLC1dYMldoZQaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773830390; c=relaxed/simple;
	bh=401D9kEmKTyHpPqYAg/Z/Qf5C2yosiphgkzy42eCnGw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=r/Uxi6U8QgGpqvWOO8TqCW1NBAsDsJ6rxJaCvR8236GRE65jACYBZvhFHwg526JZKjmL6kofNOKwOF7sdvx1qlNzcqMBy9pkpZI6xPMR6UNNy9KB+asOA04O4m5HXsR6s9hRvkt+USZzmGYS4GwOcAACu8NYeziW5a69KFSI3Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jX9JkzBD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EFsUSyqv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9MvHj3358516
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=NOT11fLBhg8AQfpgLgkRFQ
	5ibPvIj5FtpD4Ln8bl1q8=; b=jX9JkzBDUNbkDtRL+y0bw+dF1UVhPzIqRopcvg
	xIeCiitkKkzTv7d7pEDYR9DwPZwnfX6I9VMfLdsT26FmlZM5Qd9aeE1bXw9dfQyA
	kk2n7STSl7wpp+1P26wKnCqes/H1zIvzBW9K5b5vUhgpy5lWwMxP++vRfxbQaA+Z
	K8r/LqwkvlUlnhaqIF3a2on6EdCv6X5dEcLB/lWhLsNtheOee/jVBQ3TGwdpOMST
	Hwe8mcLqO0u19y1hXn9fwv11HLTZGzVOQ1YgArxoluPNqk/qOmneE4qZ+LNlgqHj
	msKQ8QHIl8xIwInp3XCktwLQF//Pt9QlkA8JPtrxfk5V9zzg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyscb09n8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:39:36 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5094ba09affso4432691cf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 03:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773830375; x=1774435175; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NOT11fLBhg8AQfpgLgkRFQ5ibPvIj5FtpD4Ln8bl1q8=;
        b=EFsUSyqvI27imOlDc8pgqlzTfAzan8JqPTOyxbgg6XCrmY9N81ejyElEpRaYsmncg+
         5lZjUf0XQWnnOC6ds3iZxPrrMEl4oqrh6g6fo8zoMpUjV1dV9ajbmvg+Xx9MJ5Hn6bEY
         4RJNzpXg1j+n0bdFQGiB7MiISapmH999ep2mk1U2e0mIo7Cy5H8SW8L0de3ZCUjHs6/G
         NheXcFmwGj4ZuS2/3/XUfCen6Oj3gy/pTKkVV3RbQXkbsAQbNBTSBusJjWuIyyz9iXPN
         eU6ksDa6DhqVv8eLQFbOJb98qNWjUVn5l2wa7yXrfcy++bTaZqM/8bXR822t/sc81mjz
         fKfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773830376; x=1774435176;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NOT11fLBhg8AQfpgLgkRFQ5ibPvIj5FtpD4Ln8bl1q8=;
        b=HwcsGPd1ncsyDy6fUAaBlQDIYVGs2oWXF9QeTOUUV8TaWxdIb1wVAjP2YXE0Udf7cM
         PEtMT2c5gB/5ls0W6oxl7TIu5NJwMRiw5DOG0hR5te2C8cnxjKa31QiYN5HoUGbihfvV
         dDt66qiq7FQTdpjp36cd8PKL1s2Hzop+RW2XIjes5QvSOKMk632T6k00xpHyRht+9yVM
         gTYH/w4xfNLjGmIGRReTEaUt7xeqEv9PgXcFE5RO9WkCC+uWsFaXOkUC2VJJSyH42SUQ
         POozSWVS5pZdZ7g9MH4XuFjr4+8uDNufS6rhfoqJYgfSb6w2deHOL+Ig8omvCfGqTijA
         proQ==
X-Forwarded-Encrypted: i=1; AJvYcCXA+wucw4cYRDlfRfIKsVmtifz9H7T1oj0aB6XsY3aY1BEweD0nx9VLzk7OmtCzU7CYO4FOYQ2rz0Tn@vger.kernel.org
X-Gm-Message-State: AOJu0YxYPA8kIP6Ep2yl2knyCvY/AZexXuuy6K0hFujcUlx+qZOWPq6s
	wrcN9RNlYAnKV7g7TcMsuSoTwBhZhN7LjOiEBgwQabn+Iff18lsFoKD9wPn6gq0O/wqUBBvPl7v
	49ujxCxMqMh72bAB0TqFNlQ2/8zJIKoZ3o+LIs2Z6zpQwhN1J2dxaDKYwUeuDYfcn
X-Gm-Gg: ATEYQzwTh9Dr/AS8aQULqZTm7wyGWD7p/alZwRdn9L7ATU/B4XTjRvce+IiXJTIHEqB
	mcU4CTOAFhP1u8xBh7NyWGE18xmH/mkVjROGDQ6CZEzEcKYcqvYhpaegCz4x+hbeEQjCXnQI56k
	cjZXlmwzhiff/ZlexUUknzieE9FS00aWnpGXa8eoJx4RyPVqwuREveAtJ8+14W63P/rqSApDzTK
	XvR08kIlKBi7NQC+pQpmeOHZ0/b0G0UnJv/6RuSPH3mL//ktp45lQMRbyCPEQbBCiASfEkbxAId
	P1wla9Rx7QKIUpI/UJWmgllsl6tIMx2q6uaAiRViKHht/0HdWB9/fIHlqyQ4JaTp5H/tCpb0ycV
	6Uah9kYAoY506EkxX+QpZr6JIXMtc/os3P+9siU20LDUE
X-Received: by 2002:ac8:7d4b:0:b0:509:39b1:d4b3 with SMTP id d75a77b69052e-50b14894384mr34921061cf.47.1773830375608;
        Wed, 18 Mar 2026 03:39:35 -0700 (PDT)
X-Received: by 2002:ac8:7d4b:0:b0:509:39b1:d4b3 with SMTP id d75a77b69052e-50b14894384mr34920921cf.47.1773830375195;
        Wed, 18 Mar 2026 03:39:35 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b51892161sm7300906f8f.21.2026.03.18.03.39.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 03:39:34 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v2 0/3] clk: qcom: Add Eliza Disp CC
Date: Wed, 18 Mar 2026 11:39:08 +0100
Message-Id: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMyAumkC/4WNQQ6CQAxFr0JmbckwoCSuvIdhUWaqNIIDUyUq4
 e5WLuCmyev/fV2MUGISc8wWk2hm4XhXcLvM+A7vVwIOysZZd7BlUYPvbzD5OEBgGb0H6vmDEEq
 Na8Q9htLo7Zjowq/Ne26UO5ZHTO/tzVz8tv+McwEWWqpaSxW1rsJTFMmnJ/ZaHXIdplnX9Qv/t
 pmfwQAAAA==
X-Change-ID: 20260317-clk-qcom-dispcc-eliza-d32607aa5ad3
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1293;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=401D9kEmKTyHpPqYAg/Z/Qf5C2yosiphgkzy42eCnGw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpuoDfJUvaaPM9UNFdk/uOXkmcGqwHL3YOrdYOI
 eTEUwbj5IGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCabqA3wAKCRDBN2bmhouD
 1y54D/9zhxQDhsiAgKlDYSGau1xauRpkoR3fsRiwgGic5q2PAvGOyPnZLy3yYxrK/cbg4kzuQpC
 u5xPgALuIP/nM87VZeWOsSS8enOevYhEpGrFleQwkffJR3ftuWC4KQSQ5TQYsvS3GEmN7xNbCP0
 KvONS37HdTAaHJalc8akveeYjFgscYiXOoqAvqAgCpqHYUpSk/lNiIxrzBHY+3HtzVYJNdHoXbc
 3Mp6FuQr9QOfcTEFaxIiQRnKtj0euGMMh8/U05g9ndhYlPUvzCWxVG4iRMf3G/HjDVp9ZFbhjDZ
 IJfbtq0K1hehRDjK9XG/bhuWgp415yzIRRxXeTmXUhyW7DgzSX97EfJRNS1UxJcTKiojjRDRMuJ
 riG1Sm2AsyVXU8oJY3A/Re78dKc5VU8AW8s/834Vg9hv+hZx1sSSOZS2HuZZpNlwPqxgK6lISic
 5NWdd51Rg6f4fvqAoOmyF0K6cCegzLZnvb6DEDpFhvYXLywnluY+OCCm9E1/hjSPH33ApueKHy3
 VS+i2e1mVQ10y7w1sM5ZlrI8T1IBVVCQmIDaqLqem+OJA01czm0LXs6eEJ6CuMSoZKq4JRgZT0k
 YbgMCmD664OLFf63zSVvkESiRPY1rBcTcNRhhNsN0np8nJVkZ6o0kXf7eQZZyKrDtJAzEaCriLN
 BzUuEMh0PtyxJmA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-ORIG-GUID: UZY4ii-m_MmRulq-qDVcqc29uvy47to_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA4OSBTYWx0ZWRfX2/WAT8ImgHXd
 MyTsNPqlzUfCD/o08oLR9UWtmnqZkQgk6B/QTm+sakYyBuyKS+ErV0Y0VkKYNFJXd0809Jdk2Hf
 dbVk+5pC7ZIzrGagtmoPClGfcm4D8KWI5nR0IFGUxZk98H4AdMC/TLoQ1epSF08tSY7Jc7/ynhN
 x1FgXGldB9UNS7r1YoMxw6R1jUd8O0L8QUb7IIFJkjHZ2m63LgalKoyT6A0RVNvRP/bABmVRO3q
 +yIH1x/SeL3fUUbUnXLqgJvuarBTPV1DP4MpP+xT8ZV/IBSPNZm5QUtD6vQ7AilSnWJsn+oOX7L
 ElSkhLCw0dRYX8Wx4rCsQQy3Ulj55/GssqATgiA28L+pa9vQIZub5Qt2Ecz03Sby6GT6KIE7Dwv
 SGEA9gmfI+BTZ0CPeTCB+5ZN1SeZha20qJPRR/jNlNcH0tf+I4CvYTuGnhUj4ZM+rgwLN8xUctZ
 NuEhSMrjtM23tYcYxzg==
X-Proofpoint-GUID: UZY4ii-m_MmRulq-qDVcqc29uvy47to_
X-Authority-Analysis: v=2.4 cv=PtCergM3 c=1 sm=1 tr=0 ts=69ba80e8 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=HbYsRfoLwT6iNdaUn4wA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180089
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277119-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,msgid.link:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 76FA02BA0DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Changes in v2:
- Patch #1: Drop redundant descriptions from bindings domains - use items
- Patch #2: Use new qcom_cc_probe() syntax simplifying the probe.
            Few style nits.
- Patch #3: New defconfig patch
- Link to v1: https://patch.msgid.link/20260317-clk-qcom-dispcc-eliza-v1-0-be4b0e4eb24a@oss.qualcomm.com

Add driver for Eliza SoC display clock controller.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: clock: qcom,eliza-dispcc: Add Eliza SoC display CC
      clk: qcom: dispcc-eliza: Add Eliza display clock controller support
      arm64: defconfig: Enable Qualcomm Eliza SoC display clock controller

 .../bindings/clock/qcom,eliza-dispcc.yaml          |   98 +
 arch/arm64/configs/defconfig                       |    1 +
 drivers/clk/qcom/Kconfig                           |    9 +
 drivers/clk/qcom/Makefile                          |    1 +
 drivers/clk/qcom/dispcc-eliza.c                    | 2118 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,eliza-dispcc.h      |  118 ++
 6 files changed, 2345 insertions(+)
---
base-commit: 95c541ddfb0815a0ea8477af778bb13bb075079a
change-id: 20260317-clk-qcom-dispcc-eliza-d32607aa5ad3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


