Return-Path: <devicetree+bounces-245709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2BACB47B7
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 02:53:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ED7643008F8E
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 01:53:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 485002727F8;
	Thu, 11 Dec 2025 01:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eC/YPXV4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="blmHkXzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3011F95C
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417980; cv=none; b=ukSXsz3WtLI6FiTHMP36V4+Z7R0nniOHseDFtlqpopNXH5tzKrry2RRmWNAqXvlD7wY11zkju0JasP/3ixrEkBo57/cuHqYTAJ4jLgYBtmIXApPd7snzmSx20wkuGpCAV7bNrh2U9MkEbphWXYOzOu0bkMykczZIPSdKa3wR5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417980; c=relaxed/simple;
	bh=wwKiJ6RHH9+Nst53x3z7Dt+EKCalcdODTGIAXJnY7go=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RR6YdPpE4zKwvtsTgeI/pvoBA+yvHwg+ylILqbkhOJcS7t4CIBnj7AVH23zs+XG/8WrfWaes+pFCjJDnRjkF1iX9Gcr6b0slWKjS42ssn7WE8yxqthQU0z4jhAk1p0vvf9CeNGiFJfeUx/WYaDAIU52E1BgRyQB+odI1eDCr6Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eC/YPXV4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=blmHkXzF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALPY8a4127032
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:52:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=mJ/0Qitwrmj1pDsUmeMDyb
	qo6s33tXIkRw4cV9GlYQY=; b=eC/YPXV4h+R4urbNpwOd7Qy/SFxhcx1PUh186i
	uovVNfJ/Gd7g+qmHH7toPrMgfd0NaxGK62Ti3ybc0TilmTvHuHEjtzojABymq6kX
	p2exLeDPy/NyHH2ef76t+Rw7sxaASy+pMyYXJgYAtEe2sWg45QD2/G/Q2w+X4f8V
	gf9gtmHS6X58tNJNBc7dypWt9v6Jd5YKF1RoCFYlQ8xTOGL85c/VgU9GIuDFzOSV
	TlCtEbhlKrr2mDyhhu7MMiHxsj8e57NhzjKt5/tv5+a3XofA5tvRCviA/6/pOI2t
	JwySkkB/EvUHY79ALF+JlXwE2mrQgCMN7YSpL/Ro+SFInM9Q==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aybhp9sna-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 01:52:57 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2e19c8558so122698585a.2
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 17:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765417977; x=1766022777; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mJ/0Qitwrmj1pDsUmeMDybqo6s33tXIkRw4cV9GlYQY=;
        b=blmHkXzF+WEnCi1IEV6YfA2DoZ9zQldRMrnfm1L88722SQbASHKEvW0DS3Z904qYXa
         c+oTv8BsjZ7EGUDI4HG/tcW74HzRco8J946SaJ/Ho1FcSn+Pr3bCotYjv4QjG0AkBGyG
         HCgP8DQJdHB5MBpN/6fv/NZ1VpI7Q3S4KEZjZ2PKD3g9PClUWGId4v/tTKePuc+UegQY
         QeCm8fy61+tN1vevJp0ZyvcqnozqB2S42xiLg8IQlEy/S7aTMds7ejNWupcQpmNdF0Uo
         nRlYm6gfFDogalSLGTZ3WAZexnf8Fo7Gbqohz665+sNuAPyJtW6N5fn5GwvNyC526ZPC
         gomg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765417977; x=1766022777;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mJ/0Qitwrmj1pDsUmeMDybqo6s33tXIkRw4cV9GlYQY=;
        b=sdXi5xWMfvH5bqKh8M4CQ1UG6/i7el6IL8mTCru3miyv+vcd9irGPbOgGydTlABT6Y
         DAFsebiXJvbd82Mv4YcK0ArtJFvnqiiwAK2aTGa6ZpCZVPneXpoiAMuUzM75vjFZgVag
         L4PKsJRNXWsmMZ3i4tPSnL8f7wjCbgx20Nk27E+YO9GT7ItRGlZo8ygpKX8JOsWQFUbM
         ypR+pU7JXrJvZXAYK6e2CQdf4oB0hDDxclvGhVFOdYmWq6IzOWlnn3P1xj7K98JOYgbF
         W4nkBtoQdb3SXe8v9VowtHF3NTsRhxIDF+ATg4AKTKyqgDOgyIk1ZfU6EkMZ9HxplYeN
         pQJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOT5yzg/TPz0aMH4vCTAE9AzAPV+cCUDSi7jeMplwVwc6fN8qVnhj2GF5mFYLUSI7VrA+upz2SFo2M@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1Svnqwgst9kp1neho0doUtCOAX3oYOSRZtqf5DbS2ro0MSTw4
	trAy8AacB7P7DrDe+XwBnsliQtBjcFAKMQnWzuF/++6pXTZvIBMgOuUOushOKjDJ/cxZywxjb4M
	I7nuoMN+WEOphmEyP9g59gW5+KTAA4U8gJz/n4WmF8GXZ4ZqKtVtceaj0RCZizkDL
X-Gm-Gg: ASbGnct2f/5QRdlzwFrb5j8nY9o/G7U5NM4a7HJdAXkjXA1XIps8pYDLyP8TzvO0O3v
	RIRq498YOCtDnT3LthK3XH1Jo0v3cxB4A1/A+gVEYVM7aVi2rKAVeUUy7CyYvmAKs/he+yPfIv6
	AI8uIyGji/80YUhkdfz0qviPYKrQCJW0swpu4zr9gdNl090mDTn327dH6qIfRQ44AARkVSVOf2N
	FEocO1sprCZe5FIWpqETNHo3nFCjvT49ZCfCbeV89Gx2G7QZF/TpA0yGfH7u04RMNzLZqCQlq/z
	Z8jYit6YcaLg/+XZni/dncysBBzrMNhmA/ipb8WaqQxITC+/ssX/k48uKBRgnyhgOGT4GXqWbfl
	Yix3qdH6h5QshONwabyLrRHFsvHpVmMilpV/+j9TSXDGA8HXjyHqndEaOae7VKQ4NM3aMJvCcxi
	gpWTGM9BxfKOhYsXxoGft8cjI=
X-Received: by 2002:a05:620a:d8b:b0:8b2:2d4c:c467 with SMTP id af79cd13be357-8ba3a666e2amr711525685a.70.1765417976974;
        Wed, 10 Dec 2025 17:52:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2JiBdfgprt1eWNTNyg/J6pNvERaBH0RqXisYArlfRDrlKbNXR7MBdFO8iDKmSydF7tz5UgA==
X-Received: by 2002:a05:620a:d8b:b0:8b2:2d4c:c467 with SMTP id af79cd13be357-8ba3a666e2amr711523385a.70.1765417976532;
        Wed, 10 Dec 2025 17:52:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f95416sm393252e87.57.2025.12.10.17.52.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 17:52:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 0/3] pmdomain: qcom: sort out RPM power domain indices
Date: Thu, 11 Dec 2025 03:52:51 +0200
Message-Id: <20251211-rework-rpmhpd-rpmpd-v2-0-a5ec4028129f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPMjOmkC/21OQQ6CMBD8CtmzxbZIIJz8h+FQyiqNQmFbEEP4u
 wU8epnNTGZnZgGHZNBBES1AOBlnbBeIPEWgG9U9kJk6cJBcpjwTGSN8W3oy6tumr7cTUCRJKpX
 guqpTCJ894d3Me+qtPDjhMIZwf4hQKYdM27Y1vog6nP25Vc4jwWZvjPOWPvumSez+X33+t34Sj
 DPEWocJOaYXfrXOxcOoXltDHADKdV2/5dRfvOwAAAA=
X-Change-ID: 20250717-rework-rpmhpd-rpmpd-13352a10cbd5
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1615;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=wwKiJ6RHH9+Nst53x3z7Dt+EKCalcdODTGIAXJnY7go=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpOiP04599rxLEeejlMK2/lOAtJS1kgX/XCNWOy
 mJhjxyf8qWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaToj9AAKCRCLPIo+Aiko
 1QbbCACGXj6lk90M4ReW5DoEBqIArkexLyU21LI6Wj7P9SAdqVam0SifM6jkUNEK1VcUMJ7QhiZ
 8w+s1XTfgwxfzJmYoW30Jubw5NsfOQTyVYvFMRA9Kk4bqykKlOgL0Tt4j88oXOl6+t+K0dGVmGa
 2+YJ2w8Nb+R0GJ42FZBkmxsuuOl/wHtK054lu8d/lijawgWK2BqMcaDI3sKDY5JaP6iVX1hCOSI
 agxAsNpZqttxu5P9/ae9GguFdULKYQdu/ykZgN5SBz5tHkv2x0hwX+jTlq4MzlxANXQJHaI134X
 NhbxWY8thiJRdR1vT7wSS7wP+23+1pT/kD7SHe6lzeIMJ3za
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDAxMSBTYWx0ZWRfX5xVA7R4o+DVq
 dd5dedF3kWwsPpI9I9hTkPP4ZMuh0fsj395iPOevBEiEdFnmWR5NG7y9Ge3JWCilm/4HZr08PII
 BDdl/m8gOJqzUFT8n1BdA+DouEXD52Cr0AN+rtN5rCTTZDL2iu6E7/6DDuzGQ4b0sEAL8cEnNL6
 jkpS7VYa33cUmSsBhabZzcKSZQBKyUOELhud9iUTGC9uV54IuD1fv2LS6rCgxKhFEqpogmSwfgp
 OfaIc5Smer4YUZfQnG4Z6+78rMQyGh9gImZtmbW0XJhBsU6ciBnTllBsYoXUA5EYUfXgLaXy1D2
 8cfeOe81GbAKWFHMrbXRrAHmX2nfktBucJeh112eXgRunNPLWfWt/Nt2hKKsK+HxUfuqCTwLQ+w
 gFd2bnMeeOnAJ7ORHfplVFfRyHg85w==
X-Proofpoint-ORIG-GUID: gvWb8wIlD7LUrcLXUfbUiMEfSHc67NkR
X-Proofpoint-GUID: gvWb8wIlD7LUrcLXUfbUiMEfSHc67NkR
X-Authority-Analysis: v=2.4 cv=LJ9rgZW9 c=1 sm=1 tr=0 ts=693a23f9 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=YjbfP1YZdK5ewiGcYwUA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110011

- Switch platforms to using bindings for RPM power domains controller
  where compatible

- Drop now-unused binding indices for RPM platforms.

Two last patch depend on first two patches and either should be merged
through the same tee, should be merged with the help of the immutable
branch or just merged in the next release.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Changes in v2:
- Rebased on linux-next, dropping merged patches.
- Split RPMh bindings patch to separate series.
- Link to v1: https://lore.kernel.org/r/20250718-rework-rpmhpd-rpmpd-v1-0-eedca108e540@oss.qualcomm.com

---
Dmitry Baryshkov (3):
      arm64: dts: qcom: dts: switch to RPMPD_* indices
      ARM: dts: qcom: dts: switch to RPMPD_* indices
      dt-bindings: power: qcom-rpmpd: drop compatibility defines

 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi |  4 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi    |  8 +--
 arch/arm64/boot/dts/qcom/msm8917.dtsi    | 10 ++--
 arch/arm64/boot/dts/qcom/msm8937.dtsi    | 12 ++---
 arch/arm64/boot/dts/qcom/msm8976.dtsi    |  4 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi    | 16 +++---
 arch/arm64/boot/dts/qcom/sdm630.dtsi     | 16 +++---
 arch/arm64/boot/dts/qcom/sdm660.dtsi     |  2 +-
 arch/arm64/boot/dts/qcom/sm6125.dtsi     | 12 ++---
 include/dt-bindings/power/qcom-rpmpd.h   | 88 --------------------------------
 10 files changed, 42 insertions(+), 130 deletions(-)
---
base-commit: 008d3547aae5bc86fac3eda317489169c3fda112
change-id: 20250717-rework-rpmhpd-rpmpd-13352a10cbd5

Best regards,
-- 
With best wishes
Dmitry


