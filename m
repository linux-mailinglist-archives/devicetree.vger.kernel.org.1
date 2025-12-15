Return-Path: <devicetree+bounces-246526-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E17D2CBD732
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 12:11:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5ABC23012ED8
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:11:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A217C32FA3A;
	Mon, 15 Dec 2025 11:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Bm5rlD7C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VxFy1Hg5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAC132FA16
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:11:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765797088; cv=none; b=sanLJgsHA/SUlI/r9b/0GgTyKPNa1nG9FbJGHc6etD1jCRaPN5OyRFPybAaD4Mof0IR33MOn0AAqruDS2YCajSkMFhnPwtBtaAVVhrVoVyw4Wp/gkmCGQeGrukGrmvIFDOxBci07Lz1sWc5Wh+JtRNv6KdKR7ErqAyzj6pzYtmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765797088; c=relaxed/simple;
	bh=pezXGbnZhJdAJg45SrHcy8TD46ZjLcV6bhQ9cqP4PXQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rmgBImHWBmKXnS5TRmM3+lXYldF6iKvqaNGXSNjapURbeml6JbJE3zQ5BTJrCoDIwRKxQCbew583qCDXsnskRPTYrJl9GkgMMm/Hq3G1lb8QFcpnuvIPyV5BMguwxNfeMHPneT2z96vkVF6a2r0GSlqrcYqxLTFjveU0WumAggY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Bm5rlD7C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VxFy1Hg5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BFANppH436228
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:11:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=HUxbX+5KD/BHH1zbu41VnZ
	Pq2yQVo6fgXcMS1u2NsiQ=; b=Bm5rlD7CicIS2ChtcY11aW0tqlD5tvn8FBY4Rp
	9KilCO2jL7Ip0YuMyDUmxiFDZjMplLfM0AbupK7wU0FSS4vJw2clNjsioo3poQjK
	R91Gm1b5qYlYroXC6jTnWbMC2q9wcH1sMmhS2hS2H6cTczXCZzX7EkZeMMw80Nup
	SjHW6ea0qIH0ed2gf7u3OL66IYK4c/UeW2t2rf77RmOdN5Hxcrxj0JJlTUMI/h1m
	4N9PA2dA2YE1gHpT0IVCgK/zJwuJ0VP5nmT2Apdr7dTgzOFUoybs24Qjm79vZm0j
	nL6yQp3xXRRLUGMGkxT04bmdR7D0iR0N4TK8hwy4wn12Fk1g==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b119amba7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:11:24 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b89ee2c1a4so6047863b3a.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765797084; x=1766401884; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HUxbX+5KD/BHH1zbu41VnZPq2yQVo6fgXcMS1u2NsiQ=;
        b=VxFy1Hg5x9lREtVTDljuSKA5M8ZqDgzwsxW3gWXQJFJetybuPfBh6PC8cvTYk/ZMWQ
         iFjf/bzEDdlUtW+1i6NnOZ1hgypzQc5d9odQbeaHfAqhQHdwqb+DiNXWpdiAFWtfphtN
         Nl4g4lyt73KL6VYJw63IY9EahqTWZ16phL6HteRIhc8xhs0bRElBAVhFCX3Jf1CBEmTe
         WjJnfscLc26GMOqpSndAVXtNW56fxx9Myi/XQujslRHUPFRzBrUrTPt5YRedeRwOLXf8
         6HvlJ+q5b9hla1Pyh3cBIFIocTty0uRHnHU+g/qRdgmOuFAGNP+GenJLZMCkEqqic35i
         rRbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765797084; x=1766401884;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HUxbX+5KD/BHH1zbu41VnZPq2yQVo6fgXcMS1u2NsiQ=;
        b=w9q2y7UFidKXt8Oa+j+GZfP0st621+O1Urz2k7+waKgUp+qTpCdvWuxFFBrJQXPjKD
         RH5gU31zhIHtzcfA5RyyM8wx59qkNnHGIMQAldgcGdOKQ6pjiOPPua/XdxTmfXWEBsEA
         pSGkdaaVdnE6KGMg31wBKfdvMufptfK0B8BzEEzOzOmASwJizbdt/b1y/A41CpAfQDWL
         JjhRI5CspuuqOW/9gMnI2RMJWLFw9cZIjmWry8c2IMUqB+eQhrY5pZ0SDFTKx0hnHJ4e
         tdclMajUwejAw7sp7XSfId2gPzAlhyJoG4sxCwEBo3+ggC9awtWu10bZNaNRYv/VPi01
         uoag==
X-Forwarded-Encrypted: i=1; AJvYcCWBcNHL4tenQYQXfzVT8MNCkflG7io0x5Vlf+x/DyS28Lgyv8EMve4nDbk82QNNJK9X6ymyy1eed8j/@vger.kernel.org
X-Gm-Message-State: AOJu0YwX5ngNtemIl8Z2Hv4lfgpr2hvcDyBoyxr9cTPwSpMp8huloVgJ
	kO3Wti7iSOz7JlcUB4ZcQpluumVjT4eIWFL+es+AUcR5L4XDk+svA589b9kWGlXRZdfXROtMu7n
	f398+U7BkYcU5MT8NJR+vm5HBErQ2IeXTtgGWSeA5f1+1NJoGtNOxZssWbJtIC+QS
X-Gm-Gg: AY/fxX5xoOq604RbujT1ueKUNErTMUrydCqGZRKATKIH9v9uJj4EQGbp67zTr1mlH6E
	lfMFxO9zoNdU4nVQ+SHynoxyId9Fv06OvnJ72ksFu459ohAMWyFA/fqvdmx1pKu9/b7JaU4/57H
	5/TNcG4PdVnmTxnuRueDgXyV1d88bLTOv7/vfIhjw20JoUK1FaM9xPn7B5L+cOK6jgVhI3vZsCC
	oNBnTfjh1kAF4JVYiBjoUz0UgpQ84C5BVTYMAFM9dtKJNbuUcNlom4XqEXgUl0xt5uTVoq77dwE
	+aug5fGWJ52r2P+3gM4SDIMPilPsZPwQPKE7xzNYrRg9Gl+IoDP96vrKVAamXevcIQtXjvRkY9y
	oOPeYdMm0+HyiOoiPhm0sh8aFf6HivADCgKXo+KZOTBSK
X-Received: by 2002:a05:6a00:1c99:b0:7e8:4471:ae56 with SMTP id d2e1a72fcca58-7f6694a964bmr8485414b3a.34.1765797083601;
        Mon, 15 Dec 2025 03:11:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuL7IsVMBYNHJ0vCAogXRZtWu4LTUFUzOujIIkHl3UjXd3y5YwgL1c8G1hkXj1ZLxs9/Xikg==
X-Received: by 2002:a05:6a00:1c99:b0:7e8:4471:ae56 with SMTP id d2e1a72fcca58-7f6694a964bmr8485385b3a.34.1765797083166;
        Mon, 15 Dec 2025 03:11:23 -0800 (PST)
Received: from hu-jprakash-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c2379e40sm12408918b3a.5.2025.12.15.03.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:11:22 -0800 (PST)
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: [PATCH v3 0/2] dt-bindings: leds: Add bindings for Kaanapali PMIC
 peripherals
Date: Mon, 15 Dec 2025 16:41:03 +0530
Message-Id: <20251215-knp-pmic-leds-v3-0-5e583f68b0e5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMfsP2kC/33OSw6CMBCA4auQrh1Cp1DAlfcwLqAPaQRaW200h
 Ltb2Lgxbib5J5kvs5CgvFGBHLOFeBVNMHZOwQ4ZEUM3XxUYmZpggRVFWsFtduAmI2BUMkDDa8k
 pZ4iCk3TjvNLmtXvnS+rBhIf1752PdNvuUtFi+ZVcegEihQLKuqRMN1L2Gk82hPz+7EZhpylPg
 2xgxL8IJoQho7xgrexR/0DWdf0AU/R4ivYAAAA=
X-Change-ID: 20251215-knp-pmic-leds-867d616322c6
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, kamal.wadhwa@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, jingyi.wang@oss.qualcomm.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765797078; l=942;
 i=jishnu.prakash@oss.qualcomm.com; s=20251014; h=from:subject:message-id;
 bh=pezXGbnZhJdAJg45SrHcy8TD46ZjLcV6bhQ9cqP4PXQ=;
 b=9x+lCkrP/8VP5zijWBrNx/qBr7017YIYMx48OSMX9dsJOJosmguFtWR4CYdyjo5pw13HewDzL
 qoSycX1YCGECQNhi6f2eH76GzwoZV+8Mp7kmMUBn+OFDnJyXNybOuol
X-Developer-Key: i=jishnu.prakash@oss.qualcomm.com; a=ed25519;
 pk=g89pXdLVwRjdTeQ+uX1QzvBO346E3hQAc1N7fcTXgmk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA5NiBTYWx0ZWRfX6+Dqq98GTVvf
 /Fwmr8e03tRTvORx38ITbaeHhwhgAcA9qv+PBtNkgFHRuevULGLO6IEnfMWqz/0bz9Kzxc2PFIk
 IjD126ZXxQ3Z0c8Db1IPicnAD33K5G/zt5Hofl2W1cOy9hQra3RxEhm2wL8jUPF6yv9VuBCSzL5
 k82tFYut/1jFLea0/nEVdPrcvsDPHrMfR/JfwUL5CRyJnubuCt9jJ8AFzmtXLBFfQGK3+gJWXjl
 BkPFeoeabInK1MHUKQaPjlZN9mePa6Iam2KAJaHUfQ7B9QT0uEeoUv79RIN87IoxP9jEVyCrjj2
 zwI1semYsM9C6Ywb5knGbXTmajS261Bsk4mly08FeMGJgrtFnLQi8OJtiVZaXoR7Oay7GTWcwaj
 crYJkHZWLI0QrRh8SSUbikbSQGW8Uw==
X-Authority-Analysis: v=2.4 cv=LNFrgZW9 c=1 sm=1 tr=0 ts=693fecdc cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COKPTGx2w1zWuD5RtecA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: xHUudySwJVQuP-RIYN_rr8mKRabViFza
X-Proofpoint-ORIG-GUID: xHUudySwJVQuP-RIYN_rr8mKRabViFza
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-15_02,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015 impostorscore=0
 phishscore=0 malwarescore=0 spamscore=0 priorityscore=1501 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150096

Add bindings for flash led and PWM devices present on Kaanapali PMICs.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
---
Changes in v3:
- Rebased patches to Linux 6.19-rc1.
- Link to v2: https://lore.kernel.org/r/20250924-knp-pmic-peri-v2-0-32316039db2f@oss.qualcomm.com

Changes in v2:
- Link to v1: https://lore.kernel.org/r/20250924-knp-pmic-peri-v1-0-47413f8ddbf2@oss.qualcomm.com

---
Jishnu Prakash (2):
      dt-bindings: leds: leds-qcom-lpg: Add support for PMH0101 PWM
      dt-bindings: leds: qcom,spmi-flash-led: Add PMH0101 compatible

 Documentation/devicetree/bindings/leds/leds-qcom-lpg.yaml       | 1 +
 Documentation/devicetree/bindings/leds/qcom,spmi-flash-led.yaml | 1 +
 2 files changed, 2 insertions(+)
---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20251215-knp-pmic-leds-867d616322c6

Best regards,
-- 
Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>


