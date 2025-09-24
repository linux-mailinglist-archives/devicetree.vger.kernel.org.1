Return-Path: <devicetree+bounces-220949-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4A1B9C94B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:31:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4A334A6064
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:31:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E33327EFE9;
	Wed, 24 Sep 2025 23:31:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="awWAqg4n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5D11A9F8D
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756704; cv=none; b=QNAuHAIKg3SV3HdtdIQF4iU7kNKup6SXeQ+kefcjhnXuRC7mr8DDbJwWEEclSh9jd9cTUzy+7PXKdfccOOpxnFcP4zfSbtxfxbbLhWM8RZJ7dgWNnqnTjwTF1VBq0VC99NHYXKSC5K0PjY3gKU3E+jrRZQ8K5F4kV4SJ+akvZhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756704; c=relaxed/simple;
	bh=otknaPiEgPCDQetk4SzSeTofpJhMuWSTYnVr2MNp7n8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oEwdEbtdVjAgEP7DTrR8aS0ISS7VG8qVxpxlBx3gTgaP3aFI3d8JCkiuokdKO3DswUJ3GpvBJ+hvKFUK2eN/4TgXgfZEhOc+FW8LSoV01ad66bX1dpdd81s3MHo7wa4utt7zRG6sY0LeD7Jzxsy1BiSBEcxfl4d8wdj0RqyQT7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=awWAqg4n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCpFNY020144
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=23y7ZKBGeMd6lj+VSF6lS2
	f4pAAL+cqtAVWcFUxP8LU=; b=awWAqg4nn3TFDPtv62excKiONOW3qk4bX0NZ+A
	OY7JnZt8UtairjsGOBRncZ8RFDx3f06VYlKmItWFnp0/iOyqLq8VrgkvU6sBapt6
	j29KfRyyW/cp7xueg+sH05eQS1Mirrq/l8eE34Q4tYCOt+x9P6Pp6M2WZRiQi1WM
	qMwOjVLKjG+nUrebR01/YkmdWW+DJZ/L0R6rPbOYhljk/hNt6VkjsN3iJELavPIe
	UjT4WsMmyluNgHAs+PdE08a8rW11uUZfSA4Y+SQmsluCzjWnLaFQXfBph5+fzHUb
	0E0FKKtAI0bm6kKZELvYH7jqZiHpfH63rGy3vgtfSmD0fq8A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpdy8r9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:31:42 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33428befc5bso342572a91.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:31:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756701; x=1759361501;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=23y7ZKBGeMd6lj+VSF6lS2f4pAAL+cqtAVWcFUxP8LU=;
        b=RLY5kMBi3Yh9qmz4ivvQLfMEqBB4b0XAYMdLHXWnRxkeNOVeVb6ywo9Ppv9CFHQSlY
         QAtZs5TyKph7wJcH2y/j0ukfU+pliyQBtWX4kEzxeN8DFEsYHKonCnF3rCL4O/ts56V4
         vqTsUWKAC3nc2x+gE75Xy+PRcYTZn8HbN0zCY3a4T+nAeSO3pSeriLGIU97G14zysQkd
         ozhAIzc90V5/kUPt0OgYb+YYE8adqftck7Nt5KJ2ELshojVfzaIhgr/9g1rpn6Y5SevK
         rloF0wLeqgv01JcxIHbHi65j7s9nCjlgnkqyPPEVGCyVB80geoTLpdO6plFuJ/JPr4gu
         ASKA==
X-Forwarded-Encrypted: i=1; AJvYcCVglYd/WE1ne8B6Al31yYSxfmw5PJqoFa5NUm4y5W7tzsLzBCYqKQnSxnpOhHEAMYKBGPZ3ywuiNRib@vger.kernel.org
X-Gm-Message-State: AOJu0YxQNOE2OO8GCxZGQ7JyrGur6YtxkbWNnq9u4l7nQzNv/8GCIKeg
	7pHMDP7GdmW69DDQvtvs29riidueGwuloWDYrVqOXggqG75RZfJT9wvHJFCPocbSqyVuqIS8J8/
	az8/fHb+eLV07vhnw6oxcXV3QF6y7EC+/HSLzQN42guxSnm87YXlvgPA5xhxJJnt3
X-Gm-Gg: ASbGncskbvZeLD2lGEPzq7rwsGODOdAFT0sQME8RNrp5YnOxb9uxIcjt7XBoY8heeQT
	Z0/9I46BpjZ+qNw1fHDiHK9TU+EwC/FlqDs4T0xQps+9ankt83SatU8NlfOg3Zuj9eTp7Epsg8C
	PpYA3N0hUUTbsbb9b5zlVKHrVrBrbBF4xUEkhAGZ2VJx95gXno5w3EWzr97eO7/eiuimVuCkxcq
	505S2KLES9SCAsj+bPsQoVZPgPVT7JNTe0Drm96CCCGLrJiWQPhXmDveszO9DH5Fim4S+Ct+otL
	VCKK7D1g/9nxtHxyfCHToDr8tGVzYaFbl8Ba0j+t/s/oqNzleYRMz/6BQZny1Tb8O5oN0qvDys2
	GFclPyfImyDginv8=
X-Received: by 2002:a17:90b:4983:b0:334:3286:8fe2 with SMTP id 98e67ed59e1d1-33432869004mr1085536a91.10.1758756701054;
        Wed, 24 Sep 2025 16:31:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtORkDSyEBh0p7+g4y62c1D6EhvzJ6cOeEDKqrvpOJ6GR6ILAAtp6OjtcvEuAknWFxquO62w==
X-Received: by 2002:a17:90b:4983:b0:334:3286:8fe2 with SMTP id 98e67ed59e1d1-33432869004mr1085489a91.10.1758756700469;
        Wed, 24 Sep 2025 16:31:40 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33474f14e4bsm194322a91.28.2025.09.24.16.31.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:31:40 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/3] dt-bindings: soc: qcom: Add Kaanapali soc related
 bindings
Date: Wed, 24 Sep 2025 16:31:35 -0700
Message-Id: <20250924-knp-soc-binding-v1-0-93a072e174f9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFd/1GgC/x3MQQqDQAxA0atI1g1MZ6pgr1K6yIxRgzRKUkpBv
 HunLt/i/x2cTdjh3uxg/BGXVSuulwbKTDoxylANMcQ29DHiohv6WjCLDqITUkht6FJJ3Y2hVpv
 xKN/z+HhWZ3LGbKRl/n9e5G82OI4ftvizFnoAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756699; l=804;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=otknaPiEgPCDQetk4SzSeTofpJhMuWSTYnVr2MNp7n8=;
 b=NiUXXvA0pi0wEDXjXfqcoiXeUo2PEdIFJzoqMWL66deRAKqxlnbzyQOmjnnsHHAxUW6Ol7jvO
 mR5BHUlF5KED6Wb7t2HjP5lVRx0FNIDmqVeVpykvCVnRJ23+MB2XK5F
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: MTWi7R_M2V0ZgOUwFeHgijJt3MaquUF8
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d47f5e cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MEM9KrPBMfUx3s_cz2kA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: MTWi7R_M2V0ZgOUwFeHgijJt3MaquUF8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX38y/oktXEpCY
 t41M1ZI4T7gnFTnIYJZHYhRvSlsiB7gfrhfPhEMqjnw9L1FW0SKC5+uUBzPLMZaDjZ4m/zwwBwM
 rN0+dMHWWDa+nPBaIgsb/IPZpg+EmufdP1rZFAjWZkxOw8nsbZ+3sULE4mxuihO0/zky4Fd4Jlf
 C3lBjI0ovstPCfJ75yCFRC4WgBvdEKWFk5Gpar8ZZRsBWu1SCRjhs0FNutFyTUYEjO9IV9HmMkr
 /D1/K1OydUo4382hefNOCDxZrznVqzWXyclT2HzwJBgjZqsbFutH4R9QpkLAChN0VsHW3LfESCc
 FbhbzYmhcA49nMNhRc4wMiDSSALNd0LUDqJBI/EKWm5sxdMundJJJmMb0Zhige4sKWP6TeuIU/t
 DSfQztkI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

Add soc related bindings for Kaanapali Platform including asoo_qmp,
imem and scm.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jingyi Wang (3):
      dt-bindings: soc: qcom: add qcom,kaanapali-imem compatible
      dt-bindings: soc: qcom,aoss-qmp: Document the Kaanapali AOSS channel
      dt-bindings: firmware: qcom,scm: document SCM on Kaanapali SOC

 Documentation/devicetree/bindings/firmware/qcom,scm.yaml      | 2 ++
 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
 Documentation/devicetree/bindings/sram/qcom,imem.yaml         | 1 +
 3 files changed, 4 insertions(+)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250922-knp-soc-binding-a035063c364e

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


