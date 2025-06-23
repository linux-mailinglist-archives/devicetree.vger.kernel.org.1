Return-Path: <devicetree+bounces-188627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C7049AE4641
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 16:16:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17D05189851D
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 14:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E02122FF35;
	Mon, 23 Jun 2025 14:14:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n0zf6cHg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50916EB79
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750688054; cv=none; b=RVOuMV4hhPFYA1yx4e1Wnao2x1S7cKNhM/ldmICo5IR+wM8USOHBFxAPJgR3s3HpqpbLK3QU+dmYjFM8SkPUZ7iDxvFlkE2PSaG420c+3Voc4et5xKmrUUG4KiSWW8kpUJsJG2Xcv1PRc+5Y2eqLq6NLuCpwkjtlgwO5Fz9Me/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750688054; c=relaxed/simple;
	bh=Rp6x6KxtK4aGFpq43ixsYLX8y1+s/PNcztPAPycm16U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DVc4NxvoJT4oMR7lb2u/QORJqjVR/hyep8KhCxivPXyOkVOSLqFG8JCnvsoPxk5XvdYyuEaVO1G9UZoRkYN7BsWVrI4yMK7tsh/hWEyLcU1W2PDz3QqBfIRnPKWL0xtsxI1xcTF12erPIg5EMmiUIUqZ+aUgg+fUWpuStcVWKY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n0zf6cHg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N8qctR021842
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=bJuDNW+sOIaFWmexDpUOQY
	PnvJ+qO7KFFcDuPlTFSvg=; b=n0zf6cHgUqWyvZSX6hwY35G+LbOQnAVdV0ufkN
	/BTw8wrgP3ATupnsVy4EScZWUiPpMYNOQtw1QUh6DMWlX/pV6nCl0yJXFFL71xMa
	2WdP9z9FXY+g95e09Tuo9ecq7w0fPZFWnEIvWZ0qSDYj8C/7p7aNCDopm07nDVDC
	LKw4OC6mxmonhzJ3GLvJfEgL1GePXOI07E0EWxDic6zzmvjhEYgTyXbP43rJuhgR
	FU1PLczN/zCMVmuWpOa+Q0HsOjlJKQIhNZdSs7RvTKITfnmUCL0qv8XxVDXb0Yvf
	BIjbaKdyrJt6dRDGdaiFbNGqZ4HvZkiIorTBNQyyWxQLu0Zg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47eah7u5t5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 14:14:11 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3138e64b3f1so5306736a91.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:14:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750688050; x=1751292850;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bJuDNW+sOIaFWmexDpUOQYPnvJ+qO7KFFcDuPlTFSvg=;
        b=xSlzcIecGfksEGy55BrBB7vDN9u7GgAfHCv0U5WfUP9YLIDZ1x8rtni5DKYj++/owo
         8rs/1BRagDy9k7Ugc/r5tO829lhFJTw4zHMLImkUJz8RW9Bkf9/0V0QrU9Ex/VDHz4fq
         yM7SU+TvjnBY7r7n4B6vsfRNquvQg7tGGcP5GTBKc/1vNbu5ogO8czj+7U6vDqIVPT1E
         9dYnXpc/lseqGmameyAEPwly5KZyTqpkqdaeP1DYdt+vJWTe4cGz4u/t2+rcNGiXHsj6
         70i9+15mmWVMl+lp+oxzsPKshDjWq0Hky3p8TpdZGrBzPAgwJBq71kvtFzzt/tmW3GrH
         jccg==
X-Forwarded-Encrypted: i=1; AJvYcCXZHobgwIXQkuOZ2FAjAWm1NRsaYD2kQVYAXfWS9hjBZqxjfUMQAsXrf2y6cPLk6kZpBFXgZx48Os6c@vger.kernel.org
X-Gm-Message-State: AOJu0YwEzVmWadtL5soY+ZaG8fVjebGqQAFKVNQLA4i6pWWaTmb9vLJm
	U7tHrhMuwaFo5IxverSK/RjW0cG99r3Z35xrUngfEGrmYWjXk7HDsR/umkz4rrMDzDqk4TDaJ9F
	39ibqEhKU9zJRYYgPRZe7ep3NEEAnzx6/6mDUEbz1hb/t9cty3vjEYrvOANYKbY4GfqSDcnLD
X-Gm-Gg: ASbGnctNx0MmSkM1sN2WOFXW5FW6IBONu3vNWsyUZPmfFC7qr/NFI2tvDNJ+achE8r8
	lfGX/VscJ5BoSjkPsnDDjcNPu0kYi1/BSPmYq40tGL/ZKEGT2M72N5Kby+qX6ZSIMlUPm1XXG7i
	zfSDsvldO+d0XeN28F2F5tD0qvj8F4ECd3qUUDV2e9GTLcnythMVuAyEtr1M9erm8ekRkQyMk9a
	B3go+kca3/p862ajtP/GEI/h82w+W3HOoWOxsfGf1d6c5FxzNqV+TDD6wxi0EnOLx5NYsAr8IfF
	rKQ0Sx5+/QIzhg3m+hdDkoPEZR9vx+uJ
X-Received: by 2002:a17:90b:3d10:b0:312:1b53:5e9f with SMTP id 98e67ed59e1d1-3159d8d80f9mr20426431a91.24.1750688050046;
        Mon, 23 Jun 2025 07:14:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH9J7ED3U9fTLEsv4tSvQ6M5GTXVIyg9vk4m45JNqQJMWlwWEhhOz4sDmwr32GURMlMnchErQ==
X-Received: by 2002:a17:90b:3d10:b0:312:1b53:5e9f with SMTP id 98e67ed59e1d1-3159d8d80f9mr20426392a91.24.1750688049594;
        Mon, 23 Jun 2025 07:14:09 -0700 (PDT)
Received: from [10.213.111.143] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159df71c4bsm8112049a91.2.2025.06.23.07.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 07:14:09 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Subject: [PATCH v4 0/4] Support for Adreno X1-45 GPU
Date: Mon, 23 Jun 2025 19:42:05 +0530
Message-Id: <20250623-x1p-adreno-v4-0-d2575c839cbb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALZgWWgC/3XOzWrDMAwH8FcJPs9BsvPh9NT3GDv4Q1kNa9zaq
 ekoefc56Q4pbBfBX0g/6cESRU+JHaoHi5R98mEqoXmrmD3p6ZO4dyUzAaKFDiS/44VrF2kKXOD
 gtBhdY3XDysIl0ujvG/b+8cyRrrdizs8mMzoRt+F89vOhyl2NHY8W2Tp88mkO8Xt7JOM2/Xuz3
 9/MyIFrRVrBKA0qcwwp1deb/lrZupRNy2InIL4Ioggt9M0AvSFj3D+C3AkCXgS5Cp0clIVeWWz
 /EJZl+QGBoqXIXAEAAA==
X-Change-ID: 20250603-x1p-adreno-219da2fd4ca4
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750688040; l=2002;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=Rp6x6KxtK4aGFpq43ixsYLX8y1+s/PNcztPAPycm16U=;
 b=yvWYMl8LTmjh2jAlMPFUt8F6zsyk5RJJACb/bjP/3PKp2regoKw8/xBSRUgguHhfRnFJvEpUx
 +vyFBQMYNQ8DwPNqtHOWOD77DxcUrX1e+sk1sWuRAJ1KuMtyhLhozQ1
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: mmV1g1FloWwYMsHGTvV1tqbjcS-r9RTb
X-Authority-Analysis: v=2.4 cv=PpWTbxM3 c=1 sm=1 tr=0 ts=68596133 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=vb8sKYNj6oKrwasmUUsA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA4NCBTYWx0ZWRfX0G5ejo2QabnS
 Ei9Z7oVjqrFCOXduyGXQUHRGiBvnhYZmWp1Y1f1p/Y69EWS15/VwEryak0zpnmwaInDGvwhhgD7
 ICW1YpMO1z9kQ+o3Fc8C6JBzPqXXRaa6RWFeTX9VUVkmb3RS/LVBuxLB+QpOK6hNsdk0Hw9tphS
 H//8J3eczTVQTpNzcYwlcn15iy7BIYB1fmg1+OyL/kANl02zwvyz43/d193XkVcsA8ctpanifBF
 zcP0ivqOVZBSKHDh5Lt8kM2elaF085mI2e51H5fGMVx6TnP5zdvDsHn15YDgsIWHhK4zOcSHOBt
 egxqudSQuLzeaKfv9A2t9Z12xVOO2UyLImZ2YDaLQZw8aa64iBlzljT6rNonSDhNFfSZQ7263iT
 vsT8utOU00sQyNgIAhuX6Eo+46Sfmm4FeV6E6eR1oSfxq/iNfpRehNxBbo3B5i3nr++P/8Mk
X-Proofpoint-GUID: mmV1g1FloWwYMsHGTvV1tqbjcS-r9RTb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-23_04,2025-06-23_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 adultscore=0 mlxscore=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230084

Add support for X1-45 GPU found in X1P41200 chipset (8 cpu core
version). X1-45 is a smaller version of X1-85 with lower core count and
smaller memories. From UMD perspective, this is similar to "FD735"
present in Mesa.

Tested Glmark & Vkmark on Debian Gnome desktop.

I think Bjorn can pick the DT patch and Rob Clark can pick up the rest.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
Changes in v4:
- Reorder the new entry in defconfig (Krzysztof)
- Link to v3: https://lore.kernel.org/r/20250620-x1p-adreno-v3-0-56398c078c15@oss.qualcomm.com

Changes in v3:
- Rebased on v6.16-rc1
- Fixed speedbin table in drm/msm
- Corrected the regex for the adreno opp node (Krzysztof)
- Replace underscore with hyphen in DT node names (Krzysztof)
- Link to v2: https://lore.kernel.org/r/20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com

Changes in v2:
- Skip 'delete-property' wherever it is unnecessary (Dmitry)
- Reorder dt nodes alphabetically (Konrad)
- A new patch#1 to fix the dtbs_check error
- Link to v1: https://lore.kernel.org/r/20250607-x1p-adreno-v1-0-a8ea80f3b18b@oss.qualcomm.com

---
Akhil P Oommen (4):
      dt-bindings: opp: adreno: Update regex of OPP entry
      arm64: defconfig: Enable X1P42100 GPUCC driver
      drm/msm/adreno: Add Adreno X1-45 support
      arm64: dts: qcom: Add GPU support to X1P42100 SoC

 .../bindings/opp/opp-v2-qcom-adreno.yaml           |   2 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             |   7 ++
 arch/arm64/boot/dts/qcom/x1p42100-crd.dts          |   4 +
 arch/arm64/boot/dts/qcom/x1p42100.dtsi             | 120 ++++++++++++++++++++-
 arch/arm64/configs/defconfig                       |   1 +
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c          |  39 +++++++
 6 files changed, 170 insertions(+), 3 deletions(-)
---
base-commit: d9946fe286439c2aeaa7953b8c316efe5b83d515
change-id: 20250603-x1p-adreno-219da2fd4ca4

Best regards,
-- 
Akhil P Oommen <akhilpo@oss.qualcomm.com>


