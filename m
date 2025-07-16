Return-Path: <devicetree+bounces-196919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE04B0791C
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:08:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23296173D1A
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:08:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B701626FD8F;
	Wed, 16 Jul 2025 15:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ShQTeKNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF61A3596B
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:08:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752678523; cv=none; b=UFRv0FoiYRqp7hiy10f7kypgLSts2/dkaRi1G5dtnRnLONYvKx46Q9J8MLrd4QUK9LrPDgtq4aeFh1lD2T9hu32UAfL226CmfJvGWwVozBHGAt5nRaLa1x7A3rmkDK/g5SUJscqV6Cjg5+Y4hjIBvYE0hBtvzRo0tzoWhXHwpNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752678523; c=relaxed/simple;
	bh=G1nVliCnmzaZKVIsXaaQHYG47ZKX9UcjtGfXLbv0qb0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QxhU7hYzfIIhfl0O3qknX3UH3qtUjFtluEJHwVoVYGlAysJbFqtCVxGixxPvceMHJvNnDZo9hLVs9mjM4/Bvw81dmQ8zDltETCjD5yXqhf4BJ4T00GOFSOkyTTv506LBeC94GJVZZjFDW9S0camFomtFMcxWc3RD83unQ8ncRt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ShQTeKNX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDMFb3007394
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:08:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=jF7y2iBjbtWTZClVXRgp0WACQ35CdQwsZ8I
	Ng6WcoeY=; b=ShQTeKNXcaiKrLYYTo3KDSqtHT1xLOqi9m/UGbMuOxg6h+w8D3D
	XIwL6+rS3SB+sHZyd8DJPp+lFtd38kkCqkcWFQOfF/wfxmFYjPqKYV2f1JILmBaV
	4kaqvB9FI0OxUjqSYtgz3/wikS5QjaDKTkCChTBGbORv2mpQ11JzkLckoOJtoobc
	DKbxW01W0BbccrGQvUUW085wITmjCMhnhXWW5mBN4eNjNNAtGWMX9h8kUJIR/KYH
	0F72iOsseBbVHIe2rLS7g6CVkF9pPvMOcxxNh2cgQz1iRwZ40srW84q+R4XxZTr2
	tWiRiskxjccoWL9VZIZIS5GdafeUM8ST+XQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5vmcq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:08:40 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-74b537e8d05so11394b3a.3
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:08:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752678520; x=1753283320;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jF7y2iBjbtWTZClVXRgp0WACQ35CdQwsZ8INg6WcoeY=;
        b=A3cpWj/ToMVPbODzwyJEkEGqWuyEUnV3ZES9G6ZmWbLiOIne6gXtIlVfBc+1uUNVHy
         u+nq9duhQ473fWT3XA2pTeeKrYWRcphm4yRlbiLaWyFVXDQrUTxRHa7GG84z1CPtUT/F
         a9bR4hLX94/tn0WwD43Ts0LWK3NXDgijSI2q7uCW3+ZLhUuXZdjt0D6jebOO1m43k89Z
         S9jwUYbmISYHHuSwRIUqgfiUmoYdm9tb3MKRX1S0Rh44TDdY0tOjzm7FbAvz8AmmTv6r
         JoRDku8+BVZewnm/HTdftz14ZxjzHT3bZw8AQlt8Y7SyuYdrxfG/dZE0UfGEYyDn87UX
         BEZg==
X-Forwarded-Encrypted: i=1; AJvYcCUWalnCml8uWPBP86eeh67Fc8LMccERuSpdjATjRTpxk3PpuXgqTB0ymhuCyQW4xCkzlL8LI7shjwb9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4pHcO9QdmTuMmmN/bY7p0DYIz6wEwlpTCVKbIa8VI2mskheTj
	8khu2opBs+2EVubYJB0EISK2ex+K/GJgcSwIsh7N740MnXqN6jdBa3YJDrlUi+zUfrWTyy6Onb/
	LDgb+xS4ySxRmi8tKZ5nPI3UG1WQdItw2ul/09unvpkqMw6rDuv6Q/y4GRGa9xPQL
X-Gm-Gg: ASbGncvfhk2jDFbq5li7Oyzzc4AeFfQVO0Ttz9MH8XWZyIxsLb8tpLgXRFZTH/rSmxt
	ajSLGpCXeGPB0SI563gnw8N3MhB5FWKGeZBo73Vh5Z3OXwgih9lC1hW5/cDWTJpJv7A3xzMNpNU
	3E2oU/Wftm4qxW91nAXyVpfJB0l2UsRYEWpbImyP+nxOni6AtBo9M3oSROyybB0tIRgN4UTUx7/
	lJ1xfLvHsxDcz8hNm0FQ+HmI8tXEJP5TIy+0S+zDfhidOHUJr4d7LhffaFuIBDjlq9h4JWtL0AI
	p9UVgyECizZHmaZGRi6VgqeBiz6Dj4/EKMAx/L6mI3mWqaynNAOIPmw1Ktia2sJ72qJRzU7Hx5B
	7LPSzJ1LyeuVbZHlamYmFbX5wViaXX2LaWeojDCwQGSepL4z/lIgVQ1HlHBXc
X-Received: by 2002:a05:6a21:a49:b0:231:acae:1964 with SMTP id adf61e73a8af0-237d6619ce6mr5935032637.14.1752678519836;
        Wed, 16 Jul 2025 08:08:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTljLIiwrNjfitBK7JN+xDDjLzDEY+wWl8eWMhJi5ZOmlYuSdStPElcKVWfC4/fzhmq/TqVQ==
X-Received: by 2002:a05:6a21:a49:b0:231:acae:1964 with SMTP id adf61e73a8af0-237d6619ce6mr5934984637.14.1752678519318;
        Wed, 16 Jul 2025 08:08:39 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3bbe6f56a9sm13713112a12.59.2025.07.16.08.08.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:08:38 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] pinctrl: qcom: Introduce Pinctrl for Glymur
Date: Wed, 16 Jul 2025 20:38:20 +0530
Message-Id: <20250716150822.4039250-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=6877c078 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=5822FIV8dQAKtubfUrIA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: _hKamdFTY0cYaN255KD8890cBKHcbDqg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNiBTYWx0ZWRfXx7AE2GbjrJjc
 4X9oFSbv87gcbAfNNMZLlIljnM+RbpRquWEAaWfgW6CD1QEy7YjxC+nBWhHWWpEcM4uJ6yVJx0k
 sdlhpS6+FZxl5+jPrX5trSjKvrIwv8DQcYAFsT6WVO7FBGRDfKLvUn139rs3cfkSRRdO5RWcdgp
 F8/5SN7/YhRWgdTL46ZEQrQRzbNRAal4XMKdisunfKccgIF+vyJa9flXZz3wlzA1ij/NGKNZTx3
 +uEHOXWkyvRMudSb/g2018G5YFfVdVUq2IxZMXUTUNshwCHvlh0dY31bZtSf1xtaCgNX6aCGDYR
 DDrltW9lKHulL6sD62fcTf5TavSVf9BoNOOivn5UnO/7TTo1fCFlJjMSQC88FCwhQ6xDyn0zl7b
 SbF+Kj2NghwqWIjA8hX8RkSeCZkDr08oBgCZp5vIy+CGB3bDDgVtxX8mdrnFCjtW77GFkDEM
X-Proofpoint-ORIG-GUID: _hKamdFTY0cYaN255KD8890cBKHcbDqg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1011 mlxlogscore=777 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160136

Introduce Top Level Mode Multiplexer dt-binding and driver for Qualcomm
Glymur SoC.

Pankaj Patil (2):
  dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
  pinctrl: qcom: Add glymur pinctrl driver

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    |  167 +
 drivers/pinctrl/qcom/Kconfig.msm              |   10 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-glymur.c         | 3201 +++++++++++++++++
 4 files changed, 3379 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-glymur.c

-- 
2.34.1


