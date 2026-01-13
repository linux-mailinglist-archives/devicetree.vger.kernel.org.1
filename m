Return-Path: <devicetree+bounces-254597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1C9D19BAA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:08:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C48730F437D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591A32DBF47;
	Tue, 13 Jan 2026 15:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I5XqZBAx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jePM3gIc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2242D8365
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316419; cv=none; b=MuFq+O507m90FCkTC6b57BK2NcnZVb41VkP6VABMZVXkuSzAlrp+E3ekEXs9BVX63nckVg9F1nGkCAzLZT1onix50eEiImwrZtqYJnzLpM5Xy2GL9szdKrqM0h7Pl6Jrjk9T+FKKjx7twc4+T9MJkOXcDVeMNKPuTs0ly1xPqeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316419; c=relaxed/simple;
	bh=wHYSQWFpKAXSCaCDvCBh3+6t1leViMbzmOqfEsLqGh4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=rNuJop/+gwWnNKV1XgHa1SDBxriP9mMFXnwyRWzFJdJ3MOf8VWMvyIUCtOBRa5D7FfyylpRN2ODXHarpftwJseqCDRxN+MrvA+QOP4cuFbmMQOjN03y8jHKEC07wUJXrjEqQ4Rg40GGQ7/lgvM8dNpWVgGuZteGbbzzYDQxqibk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I5XqZBAx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jePM3gIc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DC06vB2865771
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=BqSkX7A3ZV7PeLylb6HKgQ
	M32O22heA+Abd2BxbqiOA=; b=I5XqZBAxdVEPdSG3GPyOEnkv/rtmSfjWmuKAOt
	YyggP3H72i80RhTTT0kcDNtM7DNf6M98HtIyTSM1ELepyy5TVVy9FdXCVodlgRx5
	1TbJXAvff0tl3I4nIwjo80NXUNP/cFZNn81WpadbxER56thhSXtrg/7i9MQDlDM6
	Pi3E8Txr363SkklX8khDym6r9k6vlu1EUlr//bEOTB9tKIznmMXXkgIYeyftWhx/
	o4vQhG40kMEVyrFKxr+yPzsvsB/WGrSLI9O2jk4VQ/FxdcIFt8k/ZE20qiwYq8ii
	QFskzb3SH7hwergCeLPTpu2vWk1kZae8M3t2EeR1axUVtWAA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfjh9tkf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 15:00:17 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b51396f3efso1477111785a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768316416; x=1768921216; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BqSkX7A3ZV7PeLylb6HKgQM32O22heA+Abd2BxbqiOA=;
        b=jePM3gIcMMA4ZbRJF9dlkwq3Q7PaXtlzGBfzcJJghwwBksx3eFaAqLwoAnJlJRgPKw
         lWILSovs/CznEwy5GtdE8QKGbHZzRyN6Z83BZTv17FyQ1xSU0O/OqTzffd1IaQy1RoR6
         HLxzAvCQ4b60d5/kLUNG/giyCOxElnCdHgRuJCbwTf1md9ZUic1lVb39q18aVi9sajWu
         wTZMXNYV0p/81cEVEvlSOuyRYyyYH5VE42DiILjxwBv5W+P+X+s+jMvLnP1Ov4BSSij2
         vqLHpsS4k7eI8Iu1fmN84cfGLi+JDK7fwRTMVljGXGnb46JTDuaX9dRpUJKFBrCzFAYR
         dofg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768316416; x=1768921216;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqSkX7A3ZV7PeLylb6HKgQM32O22heA+Abd2BxbqiOA=;
        b=xHpjRQ+tm+0SilxZrbqM9vDJIP8kntAGcSDUd70fKjZHEe5YvGs5/tm+F9gQEZy2CJ
         6ldSySPdVMfM4+1mVcYS8GHYdTHrUUJeYocs2n5qRL8XRVBmNlUdKJek0OmvFjqVMK7l
         TDFHcGTRpV/ADltMYhOg+VUxxnYbzm5y8U1GoN7fjVQclGWotQn6h0wkfOKy5SxvD9bo
         XlKG5+RhJnS08nwJvj3q0ls5gTvKKbwIWq8MdR2WfX/m4k9XF1ZZkV6Vj5nxqnpj+dOG
         cobtKYDD6k6L3fhuNg9y49plDF2f/n107sFfM39+6HtEU+rQdxdntdB/p7GW1uorWlwC
         Eylg==
X-Forwarded-Encrypted: i=1; AJvYcCWgIdAj5uYQ85gNlroqVaKU+S5S+m60TMycEhXjv1CkdFbU2NHCT+12e6F1/penPYLlgYeG+SAmOnWN@vger.kernel.org
X-Gm-Message-State: AOJu0YxFs5Q8XK5m+VM4vyj88cqNv1VBNLUGFfk52T5UarrY6wKfuCjf
	M5TBPmDduk33PlFZcQFSHC6C077CPol2PJ9occzEkDw2t7CRSzbTkiBzhmiCWefpsFxsyb7FVSN
	x1/SLWOhfW8MpWE2a1kh9RCZMPqLNZT9LbKr4vOz3wD7ds9OjVwNBwz6ptbniYwhmJoMtNxRl
X-Gm-Gg: AY/fxX6JLtTIflGpptDqI0ijPjMzKXwKf47tbFZJe7OGNxcjifXpp7Wt1RW7NpQdWDt
	knffpMW52FN1OXEJLVxFx392Nc5kH6ejE2lqy3Xsx8+P7TgpXblgDmuCzj2SW8vRBL0JN/xZ5Wr
	1S+nMtoPqHrA2/LoY10eatZ/3kVewXPqZobh7cL991f2tiWAP86GU4RXbpLJxKNz8nXgjudtt2I
	qXMV2sK1dvj9euypkbLW3fYVr8a9DlcFz7ti07ee1SrsmL95D7dUk+lYbSIjyoWE6nSd2J0JqQJ
	cwOh/MS9PH6rKD019F3A1F/x1tBWgM4abc4ieJCzwNwYf3tMdYekgBPmbLsrCikZmQCRrn4aald
	hxse8yPQx2Bj/jb1fLA==
X-Received: by 2002:a05:620a:44c4:b0:89e:b0bd:ced9 with SMTP id af79cd13be357-8c3893dc972mr2902678785a.43.1768316415545;
        Tue, 13 Jan 2026 07:00:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHrKGMIFcm3Frz//e2QhG5Ndyntn+OQ+9byv0Z0HtuvTmROLhQk2k+SsS9TByZH/dIxeZOPqA==
X-Received: by 2002:a05:620a:44c4:b0:89e:b0bd:ced9 with SMTP id af79cd13be357-8c3893dc972mr2902665985a.43.1768316414550;
        Tue, 13 Jan 2026 07:00:14 -0800 (PST)
Received: from hackbox.lan ([86.121.163.152])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a4d3831sm2317392366b.44.2026.01.13.07.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 07:00:13 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH RFT v2 0/2] arm64: dts: qcom: glymur: Enable SoC-wise
 display and eDP panel on CRD
Date: Tue, 13 Jan 2026 17:00:04 +0200
Message-Id: <20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPVdZmkC/52Py26DMBBFfyXyuoP8EEnoKqt+QJVdxMKxB+IKM
 Hhs1Cji32tId5VaqRvLY12fM/fBCINDYq+7Bws4O3J+yIN82TFz00OL4GyemeRyzwWvwEaCyfg
 e2u7epwAmWNDWAtoRuGp4vmN1KDnLhDFg4z43+oW9v51Z/XykdP1AE1fuGrs5ij7ctx1msYWzr
 uSVLH/VzQI45KRSFpURKE+dG3TwhQ8tq5enK+CUcqv4vUWPRHprlUtunYT6IVkFia5AaRx9iKt
 IQnW0e6uOB9twcfJExZR0lz/1RT7WGv9Fqz/Q9bJ8AcnEuSOnAQAA
X-Change-ID: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1940;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=wHYSQWFpKAXSCaCDvCBh3+6t1leViMbzmOqfEsLqGh4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpZl35p3oyWdUhNEuPTH+Cl/KNqsyh2XU3v3qvB
 WWzN4sYE9yJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaWZd+QAKCRAbX0TJAJUV
 VjBzD/99SmA48ffBezaksUwYHqqEJGZ3KxOqV2y5ZAUwywSqrhomQzVaxaszN3gdY5Jyh/xHWIO
 2dltilLdpHzUFWewUw2cncGsWymqe72ZKV2GQbpfmu9YpGMPx6utTEyI9kShYQvXq296aun1mCx
 zOHhC2/NOMUGDiAE+zdiVJoGFGKjBYnOvXMSXZt03nJJZLD+bq33SAGFEVQ5bfNu9i69ZZk2Tj7
 NSzb+dHg5Vt1PiNjYYPsN2iP7hT/n+UULW6VgQAvErdf0LYPS1T6sR9fLtD1dYT9O0RuH3D8c4h
 Hr745pNAicAuZSkjAuQwGXRrCWDYydcPN0bZcs9rd49VsnumazdGpqnLb9NsGFA/ULVtNZEixn8
 685FfoODZm6dZ60wTJHebcDUCQ6sV4yb5w2JNvKMjVqHe2Rj9QlneK06cLMF3tFKKaGMXv/yT1g
 k9HH9kQmaufRMrovCSifbTBiaxn+aPsMBnguuRMPuUKABOmA5UKhVQtGvtFx+Xq+accKzD5UgKD
 W0dpCVtw9egw1JjLOHsdOO85zBDXgLvziieM9Gi/bc56Y8pI79UI4wZ5X6mNcFVnoyuKaydsFNB
 jEVx7pAW0+/ODwHHpvcg0b/fH+ROJ5q5M/Q3eDG3mMDQERwdfNrkCZe5ncq4lA6+nlM2niJ0rld
 IgAQsbHK8ByaN7w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyNiBTYWx0ZWRfXzbZoxaTyEHYR
 Z9HMGHrTxNhCLI+Ru5AdUYrzJOAUb3drBCXeddjKLrwCkdoka0qH30EEHZWYvSIVjjOzjMh16pC
 PAZApvsTJNkOG5asMHdLF9YJhmeTF2ah0P7TLYi7CWp73SVOmFSOmt02ORXnEb9XTRD9I7MCB8N
 l7fnnBWNarj/Mduo1smFp7og9nXjmVn2GOPca8Ds12GTwfCUzOXi8p2mxgOQq1SIdk9ppNEfODz
 EQUMZzAqM+ITZBYCwcZ09u5P2ZuYjW0uifs21QP6XlhetDtNjAYpFo3edy91zqVK/kFaQE6Ke3M
 KOciVYFMNPYXXGbDyDFte19h4YU8JkRhi6vd7RQyugJ73o0gH5EmO8vG2v3TiEwgCAwAuDsDHd2
 HcizIgVIyES4DOB2RfX/h7hl6LteqrK+ve09xp4MziI0HNb2PNzpccf5Fb3wzvOuUJ1WnEbHGT2
 JCsekqCHk615I4D0azQ==
X-Proofpoint-GUID: QsLpHraPDHvth7FHBP6ARz-FF1BgoqXA
X-Proofpoint-ORIG-GUID: QsLpHraPDHvth7FHBP6ARz-FF1BgoqXA
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=69665e01 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=RUlelSpolvTNyr7Sls5SJA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=hyus_tY6DbtroK8RAlQA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130126

Start by describing the MDSS (Mobile Display SubSystem), the MDP
(Mobile Display Processor) and the 4 DisplayPort controllers it brings,
then describe the PHY used for eDP and tie up the PHY provided clocks
to the Display clock controller.

Do all this in order to enable the eDP panel the CRD comes with.

Sent as an RFT since it was only boot-tested on a remote-only accessible
device.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v2:
- Add missing PIXEL1 clock to DPs [0-2]
- Use the same opp table for all DPs and drop the dedicated ones.
- Drop the extra compatible from DP1.
- Changed compatible for the panel to samsung,atna60cl08, as that is the
  actual model.
- Link to v1: https://patch.msgid.link/20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org

---
Abel Vesa (2):
      arm64: dts: qcom: glymur: Describe display related nodes
      arm64: dts: qcom: glymur-crd: Enable eDP display support

 arch/arm64/boot/dts/qcom/glymur-crd.dts |  71 ++++++
 arch/arm64/boot/dts/qcom/glymur.dtsi    | 431 +++++++++++++++++++++++++++++++-
 2 files changed, 494 insertions(+), 8 deletions(-)
---
base-commit: 3e2780072bcc3990571a46bb90be9eddf905db1c
change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750
prerequisite-message-id: 20260113-dts-qcom-glymur-add-usb-support-v1-2-98d6d387df01@oss.qualcomm.com
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 84f68e52002da3c44523b7823bbcb660a6040961
prerequisite-patch-id: c6297ae9d3914bd294228ca0882fb7852b7e5e49
prerequisite-message-id: 20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com
prerequisite-patch-id: d986d8d948eaf7b80028b2244750dc7aff7de307
prerequisite-patch-id: 84f68e52002da3c44523b7823bbcb660a6040961
prerequisite-patch-id: c6297ae9d3914bd294228ca0882fb7852b7e5e49

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


