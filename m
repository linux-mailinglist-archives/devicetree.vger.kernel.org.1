Return-Path: <devicetree+bounces-253626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2C3D0F562
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 16:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D981C3011FB6
	for <lists+devicetree@lfdr.de>; Sun, 11 Jan 2026 15:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58228346AE3;
	Sun, 11 Jan 2026 15:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TFCg5HvQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OpzEf7y8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E142C207DF7
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768146562; cv=none; b=Xrn8IAkPucfX06dtkChC2rIuOTs0i5c2jjCxrA2EovMDuLRSbuEJCokdqdBwe8d3J14gPkccNUxzAd4Dvfy4Y8vZJDoN+Vxdb2HoDRaEGCJBkEobRdmmFnIdVaa23ROA1PRoD8ng8/NEcX0ikbKoMUtJRyYRjHV1jLLS/Ydkh9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768146562; c=relaxed/simple;
	bh=WQuMSF7U4ERbrc6GLhExFtoMtX3nNjug69Zngdqi1E0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=kEthI7sVKcXHyMAPnh79OOkj5PDu3rlhe+t3pm9Xz1StOubTEae0a4/GWqNGITMEE8I6V+KZdn5mgFMMt28tTYAmOckGyHAAlAifazDeYEDe4YC2ZwhnkYP1N4EvrYucDp2qugL7/uX2rASKmpLlBnANRrhUi61miE5pTf/XEAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TFCg5HvQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OpzEf7y8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60BFTOAN3525476
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=0R0ChqWp0pdt++SFdjljlF
	xTEfPDQFb+wu6OerIv1HE=; b=TFCg5HvQ5EELcFnggjOsUwMmbqW08dcLfmID3u
	UUsra3jj9Fwm3MU9YRFllNp+EpzSxAm46ASZqCO0jHCk7XOK9ChI4KpGJi6qKU5n
	rYgme0qE1Qpw63yGTFcCPm02OvuYWYLXWfP3RB/dUg9W9jgxyfujSBEn7r6t2G09
	WGhWzkzCmvK4xqD0bTw1ruf/mKlugzNKKZw08vaRKw/FRtC3Kz1oq2FZI9cdIVm8
	1v1MlkdhjlY7LP8CiDx3wM+QBkWktV3xCHxDyjeK7PRnK+0HOWAkytI7mjDcrvre
	Pe51S7G+l7mPnuh5LQrhN6GYe6684xtLeXj+ftU4xqvFJHLw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bm8kyrem2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 15:49:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b6a9c80038so610140485a.2
        for <devicetree@vger.kernel.org>; Sun, 11 Jan 2026 07:49:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768146559; x=1768751359; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0R0ChqWp0pdt++SFdjljlFxTEfPDQFb+wu6OerIv1HE=;
        b=OpzEf7y86bKHUZXTR2aAC9lbsPDfm6NhmbxZij1Urt0twGIk8SXKDm5Yltkm7NLKy5
         jItQjEDpxhks5dTcvMSqGsp+wKrsLMZGb55Cb0RoaTvJFZ4FYXmWWtaJsAJAsW0UVSjZ
         sPYNHdTIWu5jORFeiY2vFqucnTRDnD+4pCnUHbPD3lSNA9WThsVnpheN4s+3p1tPpKsH
         IOvpnwYuM/+yONO0ev/JQt1OG73VwmSm/wL7nQDMpBvZfQEfOZvDwwKPKk5ndJUp6gEp
         mCdjPLY9t3g4o/ROzQtarhRw9VnpDCvv7cMqcHNfEpwM+0HHjoZCXPxFuLsXMFKD/Eok
         wpMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768146559; x=1768751359;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0R0ChqWp0pdt++SFdjljlFxTEfPDQFb+wu6OerIv1HE=;
        b=YGRETKtmRW+plZVS/FTvoER61TTHbkpyEcP/lgCmnP8Mudn9CdE92i8ohUwjVQDqyH
         RIqHJuc3NmK4v/2IXw5fDGtiyXRYdwr5kEv0+rskrvjLSUa9uApi1Nl+/zOTrRHl93xY
         tuWGmq5zcRnQxDV6kVYJorPjOu8v5fDms5c5siG4IIKk0qvMPZjfJJJjCPx5K0AnBt8P
         w6AMU81JMQcrAQDiy/wXPtJlF6ScVxSdKUST6EGQr9orl/St+CUr+P8ocx3XZsTTX6rH
         Ul2HME8lg20kghe0UA37GIEiPQoHb7YnRMmr4ufnYQjoj4nxmyivHrNH98ai3NcDSmt4
         yfPA==
X-Forwarded-Encrypted: i=1; AJvYcCU+eNtkS1rjSTHdf+34htx9/XVVHu2p0RqevFJhfkahD6U6/4f67ObiWrV/yKj+kVqF/AaD4Ox0d5LB@vger.kernel.org
X-Gm-Message-State: AOJu0YweKZojRD83VolmcX5AFn6hrgfGLT7cyDAUXqgDsEKCGRFbnWIC
	sZLX1BQoTt782XaJLuhHS/ln9R8ViWZLL2SUaDgSFCWr7UhfBWfion20e/oYY8yhfUGMnEVct2X
	JXIzhQFUMM4diTbO4/uLV70srabvrxzmS5exe15ZwrgiRmtPgzkhtZypHoYhQKejX
X-Gm-Gg: AY/fxX50pRygUpehCaIXSvF3T56Asr2hCu7qtGrQOhZQ7dZ8/AVcg9u1BDagtF5ffF2
	ho+vnt51o8VRfTnCbgp0Ak+Bw14gnnqWCurzL7VKvl47MSxtmzEnx6n2sX4pIR70tPV3BT9UWmq
	82+MIZpePpnhfZX//yWgvzW2UezDotqSTVjIthfFHK9OVbQHy2aJhURjAWS7UTICHWBt7vk8I4b
	WlugSoVBtGFcyX57Y+z6cDp+N7pSRHMKtMg1NxAdrIYj3jbtj33HcPBN0G1yvsAdghO8D6tcN6Z
	1PzeC1DCFfZclwFe9fTN9rP1VATH4qNTY58gTQuTK2N+t2LWLuX37XLH88KF2clxczSQeR8LJoN
	XRgGL8sU+lyqNp1Ge6q+JgEvGBzGdT8vSag==
X-Received: by 2002:a05:620a:7006:b0:85d:aabb:47d4 with SMTP id af79cd13be357-8c38935623bmr2123414385a.6.1768146559231;
        Sun, 11 Jan 2026 07:49:19 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFmcuJJPsUlhOx8Dm+GFrgsYQgqIsQAQViClKcrn4ilAl4JhTawi8geKku4fzh9VLihRuPR9w==
X-Received: by 2002:a05:620a:7006:b0:85d:aabb:47d4 with SMTP id af79cd13be357-8c38935623bmr2123411585a.6.1768146558762;
        Sun, 11 Jan 2026 07:49:18 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a5180bdsm1637163166b.57.2026.01.11.07.49.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Jan 2026 07:49:18 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH RESEND v3 00/11] Bluetooth: dt-bindings: qualcomm: Split
 binding
Date: Sun, 11 Jan 2026 16:48:57 +0100
Message-Id: <20260111-dt-bindings-qcom-bluetooth-v3-0-95e286de1da1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGnGY2kC/43NsWrDMBAG4FcJN1dGJ0e13ClDs3ZIx5JBkc72g
 SM1kmNSgt+9wksLhdDl4L//+O4OmRJThpfNHRLNnDmGEuqnDbjBhp4E+5JBSaVRKiP8JE4cPIc
 +i4uLZ3EarzTFOA2itd0WtdTPDh0U4DNRx7cV/4DD/n3/9grHsh84TzF9rT9nXNv/8DMKKbTa2
 rYxVDtvdyMHm2IVU7+6s/pttQ8tVSzvTSNbLZEs/rHqH0th89Cqi+XIG2d0p0nhLuZcXa52LHf
 nqgw4LsvyDbfOhMZrAQAA
X-Change-ID: 20251028-dt-bindings-qcom-bluetooth-9af415056c1c
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2890;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=WQuMSF7U4ERbrc6GLhExFtoMtX3nNjug69Zngdqi1E0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpY8ZyQj/wv6h2+dnu3cOKMAPDi3dGJqWx6EAFJ
 ZEehTe7wqmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaWPGcgAKCRDBN2bmhouD
 15QxD/4+QHPX9rOy8/UWPIldi+FUT5YDTeoKhxjcfG/WR208x2uQ8prInpIabloalLvPDJgULk4
 aPflTrZ7YwNDBsqCE9XLFKQjcrQ19PHNFonrSQcfUWY7N2a7joUD9X+FW72uIjVoP+q7ahSFlHa
 ZN9UAskNn9XsQYnFx/VtdokMJ/t9tAhO6HmyAbO5FyDDL7JX7zaRV+9vRdOWlAIRWpFpaEIOq1r
 L7hDndVAFw9K2/5qdEdOcspL8KjBNP/xsp8JviiSLwe2o5r8KmtaQazPlMGxKZ0n57hMQQx2QXW
 nk7iKEy1dgBVntudYz6LZ6EX8kDr4pehZTCA5UDg/d1L7Haqa8kSNviqHQow9OLUhkDArjX5KEd
 hJwEQN3bsaOZYZjyU5O3rZbHPw2o7IX/wD9TtUeY+a4t7KdKLK9TZFKhzO2LEZyjxOPqkyeUgnF
 XlGB9yzxsYIAhkzIp9ZpAPyHlsIdmJuphvLd3A9Z29fYCZmGUWtK/kYEpw4zXNZMW0Qyc/w5YRa
 IAKVny90Krsjkri5fabWZPD8x0ki/kWwR8KPL3afTXANlfoiff0qLpX+T7izkHqtsxvGMqjYGh1
 sML4eCpThM/bvQvdxTe1Ar2oLT/FhZ0NvE45pD4Oauz2zzG40S5Zy3OvJ9Osnh2W+DpWYY7ZUaM
 h6Bgw6HZsOrXXyA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: lZyGjmTHhljAA3cPwkAZkwo3XzdTRUf-
X-Authority-Analysis: v=2.4 cv=ZuDg6t7G c=1 sm=1 tr=0 ts=6963c67f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=P9jvEC7lATeLTnKe_mwA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: lZyGjmTHhljAA3cPwkAZkwo3XzdTRUf-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTExMDE0NiBTYWx0ZWRfX87PZlP9iLjwu
 4hedpnR3+XFiJynAdrzoXKKkIxojPjD9JpdBaR62z0mGf888TR+1A1W47TW0G5HqpMkqe3e2Vkz
 sAgGNJ3ceN/4bdBu2e7HgSrT8KQlCv7F/h5OeCyaFBROeBz7apZg5oUACngdOhypfSXYWTTM3gj
 5hoVP3N3S9+VcSf07zD66xy6CiLgoYs0IWV9eoNUP+FBCK5Z3PVFQ1LcTb0BLbYKZPRzOT94y0w
 qJjLFeoibcy8s59+0LJWvBOzZxhDdIKvgFUkLud/Wa/jF44eQJNrNfZjWxcImMlUrGFt+yvm6bt
 1jzpcfSitVx3QQTYi7GEE22ldQdl2OgqjwR0j1cPBMbEPO7FJWwSjFAvlGU3QCqcF4pFClgMb9i
 Z8k7WTHg37pzPrfOfzKw1XFUJrdYEMIsBdGm5M0cAD1SASwkHP2PwHDLSS10lYmF6E3WEyymMP7
 8R1EdbGo949jofI9NPg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-11_06,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601110146

Changes in v3:
- Just rebase and add review tags.
- Link to v2: https://patch.msgid.link/20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org

Changes in v2:
- Drop in few commits the properties (supplies) from
  qualcomm-bluetooth.yaml which are not used by devices left there,
  instead of removing them in final patch (qcom,wcn7850-bt).
- Fix dt_binding_check error - missing gpio.h header in the example.
- Drop maintainers update - split into separate patch.
- Add also Bartosz as maintainer of two bindings because he was working
  with these in the past.
- Link to v1: https://patch.msgid.link/20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split bindings to separate bindings,
so device schema will be easier to read/maintain and list only
relevant properties.

What's more it messes up old (pre-PMU) and new (post-PMU) description in
one place adding to the total mess.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (11):
      dt-bindings: bluetooth: qcom,qca2066-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,qca9377-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,qca6390-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,wcn3950-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,wcn3990-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,wcn6750-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,wcn6750-bt: Deprecate old supplies
      dt-bindings: bluetooth: qcom,wcn6855-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,wcn6855-bt: Deprecate old supplies
      dt-bindings: bluetooth: qcom,wcn7850-bt: Split to separate schema
      dt-bindings: bluetooth: qcom,wcn7850-bt: Deprecate old supplies

 .../net/bluetooth/qcom,bluetooth-common.yaml       |  25 ++
 .../bindings/net/bluetooth/qcom,qca2066-bt.yaml    |  49 ++++
 .../bindings/net/bluetooth/qcom,qca6390-bt.yaml    |  64 +++++
 .../bindings/net/bluetooth/qcom,qca9377-bt.yaml    |  58 +++++
 .../bindings/net/bluetooth/qcom,wcn3950-bt.yaml    |  67 ++++++
 .../bindings/net/bluetooth/qcom,wcn3990-bt.yaml    |  66 ++++++
 .../bindings/net/bluetooth/qcom,wcn6750-bt.yaml    |  91 ++++++++
 .../bindings/net/bluetooth/qcom,wcn6855-bt.yaml    |  99 ++++++++
 .../bindings/net/bluetooth/qcom,wcn7850-bt.yaml    |  94 ++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 259 ---------------------
 MAINTAINERS                                        |   1 +
 11 files changed, 614 insertions(+), 259 deletions(-)
---
base-commit: f417b7ffcbef7d76b0d8860518f50dae0e7e5eda
change-id: 20251028-dt-bindings-qcom-bluetooth-9af415056c1c

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>


