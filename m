Return-Path: <devicetree+bounces-210348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3437AB3B53F
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 10:02:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 612E5A046DB
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 08:01:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C19F82C2374;
	Fri, 29 Aug 2025 07:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LXJuG4K3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5FF28641F
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 07:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756454299; cv=none; b=Abqv/Wb55EjpzgHltyhE0Z9g67BNyAI8i6/DAfU2RkVgxtgm3/TSuO5H7wu5gms+hCCVzgX4t9Ts8jYxCiJMzOo2eXEjQUcBqoAowS8K01rmUnf7RH6YI21bLVYshJvKTQ/knTsiTvwggI0nSCLfORfPoo70KtewPkf18tdf6u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756454299; c=relaxed/simple;
	bh=2PKGQycBUFlWqOeCmczdNYF3bcFIHeNZBIXA8HRAk4E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qybwTPdFBvm2tWG6oZx00H/+PkK4RQo8qiA92hV12YjcipCMRvGgayxAvAwsvDlJmTc3SsrDMJL94pC7cG82zTL3Wm+QVp7jFpJ6DOWGncC+W6e2cGsXeMSRztyzIcD+B7HGnbBi6+oPw1JLY9u9YDs+slDbQySWXE8R8qFx9zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LXJuG4K3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57T5tTaF015339
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 07:58:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=nMmvvuBBHOBvmrBWmarNJi
	Kf7qrOg4JEex2f2Ps3aKM=; b=LXJuG4K3BgRrfeZMimgCglFvWnzC3A6JB0c5b1
	gWZAlKyZD1vBDheU1lkx2rB7d86lUE6d8hZMb7hzJ2dYvgVmpOrfddeR9oVHFmRp
	qD4EtZbCxAIWzC7vEta6BXyasLicDH0iYYIFySMPxFlUIIs8kfTr9lJ7QXEOe3VY
	uQTNShypSf92R2zOpM7NTtiAQGxqaR4skZMEP0btSOnQpAgurJ5lNQeNhpo/9OdS
	lZYGdh8DuGL6z5OeuPxKu3iKb6BEA9uRmmIgpcv0UCMgo/XEHyaDRi2haDWIdJ26
	cKognMvQdFp56GC3U2sapYvWcsMUUZDa4Gz5YU907J/N7VjA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpf5h54-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 07:58:16 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4c1f0cc4fdso1195268a12.0
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 00:58:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756454295; x=1757059095;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMmvvuBBHOBvmrBWmarNJiKf7qrOg4JEex2f2Ps3aKM=;
        b=iM970dInPshpYGGsMH771A6DnwoGgRsa3vqDOrZhUveAkLG+onwwE7cLWq8rCFar5i
         fkGa+Q5ktofR4Lji/vMH/jFAtvKh+gMheXPgz2zQOJ7fXdPIe7bBzTqi7waXA0TcS2uD
         fJdMlegNXN2iP/HH6ccr8s3nbQ1TlsFRFUzm270PbAMmgrIWGHQo3AXAfxb6oaIS+5xs
         fYL1AcHSIKJT0RShUp8DPS+lf522eAq0n/VFqtgW9mZ9vtSr9j9xSVBICzRRd3J2WLo+
         +Ker7/i552ViAhtsIPECsWMK82RYr8haCVJZab/iDm4jk5CFbNGaIMERiN7LjLDb9w/D
         cFnw==
X-Forwarded-Encrypted: i=1; AJvYcCXQ9voggR1BZIZEDZdwBhQKPodfXWTXD5391yIlVVIEXdmUSh+POeGd4T0N8OU5gTTUKeUTTKxVCb0t@vger.kernel.org
X-Gm-Message-State: AOJu0YwyGnY5V/UmurYwXRQ3UPf57vQyRrzk6f1dYWDed5rrNOPvCler
	Fk67fGGTEWZNdlGuAhOZfN6xPEtC1v7SpM4TtdPBP5pRAw/OnU08PIhGT/U4mjqPdBhTwzzlKWn
	UT76bctnReLvPCuFWl2qql+VKxBtDpapFN8psmNFTvS53AnjEg6nv6uZxjGT5wrjL
X-Gm-Gg: ASbGncvk8KKEtzEiEiVHwd7KYN9gjmB23+Gwz7Om8UX5cqRVQQ72IOC29IRlwLa5yS+
	9lDYfTKzk2HT6o3h/1zddOCjMG7nRT6mqrwH3SOr8FzKCyoscUn54SEswiAL60r5xbaPIldSd1H
	SVG81ThCRZ0Swc2Et/T0C34V/etQt41BIEGQXmUVceCkWApIkNjj1FLDLSp3tVEmd2mxj8FwnO3
	a6Fdo1FgypT7hwzb1XCneR9KcTlTZPLbJsdSa7AKJmQ2gQAN6x5SlZLpY1Jnq6lbq4p8YSJSe9u
	sJ9igtCLZKulFvyejOyeaos1cKJdRncPz1Hu/g4wlIHV/1gBFhH532VtdZWCW+pd
X-Received: by 2002:a05:6a20:3d08:b0:243:7136:2fee with SMTP id adf61e73a8af0-24371363240mr24723750637.16.1756454295487;
        Fri, 29 Aug 2025 00:58:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfNF9XR64zX9+kWe4I9diEOKRZ4goaSDhqBkb/7GI5U8d7hw0kot9p8BjaG3AyVB9EFyxlvA==
X-Received: by 2002:a05:6a20:3d08:b0:243:7136:2fee with SMTP id adf61e73a8af0-24371363240mr24723722637.16.1756454295007;
        Fri, 29 Aug 2025 00:58:15 -0700 (PDT)
Received: from hu-tdas-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a4bb5dasm1554416b3a.55.2025.08.29.00.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 00:58:14 -0700 (PDT)
From: Taniya Das <taniya.das@oss.qualcomm.com>
Subject: [PATCH 0/2] Add support for Display clock controllers for Glymur
 SoC
Date: Fri, 29 Aug 2025 13:28:02 +0530
Message-Id: <20250829-glymur-disp-clock-controllers-v1-0-0ce6fabd837c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIpdsWgC/yWNSW4DIRAAvzLiHCRgFpr5SuRDd9PYKLMFxlEiy
 38Pso9Vh6qHqlKyVDV3D1XkJ9e8bw3sR6f4httVdI6NlTNuNOCCvi5/673omOuhedn5S/O+nWV
 fFilVjyZ5BwCeUFRrHEVS/n31Py9vLvJ9b5vzLdWBJ9/aZO6SBe8QrBiKCQI5cVMffAShKbJl8
 SLI9tUlrNLG65rPuTNp4NAnLwSTRUYaex9JwjAMFqxH500zlNTl+fwHS8mF//EAAAA=
X-Change-ID: 20250829-glymur-disp-clock-controllers-50f728887bae
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-aa3f6
X-Proofpoint-GUID: 8z2ijMoSMyTFIM3taH8sRdqr2nOwjNoz
X-Proofpoint-ORIG-GUID: 8z2ijMoSMyTFIM3taH8sRdqr2nOwjNoz
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68b15d98 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=01lUyKRgbtoGor2CX9EA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX4jAYqZ8q8uRe
 8w8+R7FSQ8OXDjZ6552+zBGtWPrSil3t8b7mOLgd4cheiuUZnQFzS/kuesrNhituJA8LJWfDM1s
 HqoBbONrIkPUOkVqbEpaYGL1puG9Qgbn2CKRfnVTQt+wNVlQ04dQCwjB8NxpM5csRIvonI2ahMX
 sX7e/jxwHSOTvAxu5u0CPkmtJFmIMXTw8+tGAAwdBfbnWSoL+XjPLV78C2Rsu/ljUfFQUCex7er
 gPEc7LPyMExD6muvNL4e49tXsZ4MlRFOmxz2bgot99tyID7CnMb0kb0ZTmFVA4iSIkIuwQJZv/T
 5icXSb0YBR1KJIVvNXTOhUTJBFfsGz41wnEcU6y5p2ILra7OuMgadQLsXfSmw52wxxfPCplR6OZ
 nYL/C0mO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142

Introduce the support for Display clock controller(DISPCC) for

Qualcomm's next gen compute SoC - Glymur.

Device tree changes aren't part of this series and will be posted separately after the
official announcement of the Glymur SoC.

This series has a dependency on the GCC clock controller series posted
https://lore.kernel.org/all/20250825-glymur-clock-controller-v5-v5-0-01b8c8681bcd@oss.qualcomm.com/

Compilation of the series is dependent on which has been added as
dependency.
https://lore.kernel.org/all/20250825-glymur-clock-controller-v5-v5-5-01b8c8681bcd@oss.qualcomm.com/

Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
---
Taniya Das (2):
      dt-bindings: clock: Add DISPCC and reset controller for GLYMUR SoC
      clk: qcom: dispcc-glymur: Add support for Display Clock Controller

 .../bindings/clock/qcom,glymur-dispcc.yaml         |   99 +
 drivers/clk/qcom/Kconfig                           |   10 +
 drivers/clk/qcom/Makefile                          |    1 +
 drivers/clk/qcom/dispcc-glymur.c                   | 1982 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,glymur-dispcc.h     |  114 ++
 5 files changed, 2206 insertions(+)
---
base-commit: 0f4c93f7eb861acab537dbe94441817a270537bf
change-id: 20250829-glymur-disp-clock-controllers-50f728887bae
prerequisite-patch-id: f1872a81e0bdf89b2e26397d8eb6dc1ce7eeac1e

Best regards,
-- 
Taniya Das <taniya.das@oss.qualcomm.com>


