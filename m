Return-Path: <devicetree+bounces-277782-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFA8NHv2u2kQqwIAu9opvQ
	(envelope-from <devicetree+bounces-277782-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:13:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5069B2CBBDB
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 14:13:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 84D663033089
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C683C3CCA11;
	Thu, 19 Mar 2026 13:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pAclr1ad";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BSRWSWCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614493A4F30
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:13:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773925986; cv=none; b=Dl54ycUmGukTde1D52GOwwuMW6brJ9Yb2+EpJh0cRQs+5ENnhyd6J8brQbSIjP3G5QqyjRa2XT7eQgkXv3jvm+0uAg0+NOi6Fk04svCbAaQMab/d0N1rVX4dSYZpL82QxZDGHDV/I7ruhpnQQEDczJfaFyoogep117EWYjdFNCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773925986; c=relaxed/simple;
	bh=wIPMFPB4UOxP3zJUBcsp1vJFBWjjlqUwCsLw/fAAHgo=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RyQJSH1fSeHPBTipZO/WrC/9JUjIeAmTq/cr7kJ5/NjygvKYNrMpvYTrFA9YR4lRXSb7XgS/axOvgoKMbY9/ORpObHVnVUPtDWGGiUjTtHtpUDcMGhwDIxMZNKeTpalfYA/osqnTVUepmRTXGqw1bRYG1MDpZcWl0NKi60wSxKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pAclr1ad; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BSRWSWCL; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73wij3927153
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:13:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vUCgIxbl6Q52DhphmVXEM3
	QeYcLopSrJnTw5vk5GqzI=; b=pAclr1ad23KwWGQvSgVzyEd03AUowG5ZWiOAO8
	JZnE1cQcwr7DvvlNJTcohh7ltsgdDUSc+XO1WvHYTu0BfsrAOvbD79ISvktMtIHX
	a9sTqnl1JNAupE7Dv9x03qjDM4pcbIzXwBZw6WyFDfuQO+2RzuWvHWbuzxBaEV+f
	AbIYwogzhX+OAa16A/Wi8sunfD7G3euhDTICHuckWLACz1LImmBYRIPod7uv3Jx9
	A/jHpFcwWuZFRYl3P/B0pTbcw2nSXR1mK28Da1tRZZvAbzBLqjQ0vhmnlsxWqYop
	KJfasoIYUhyRs+0Sem5XjeiMwTRKF+ri1YwvDT92C76vqVww==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyut1cfvk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 13:13:04 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-56b7482a2easo1473784e0c.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 06:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773925983; x=1774530783; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vUCgIxbl6Q52DhphmVXEM3QeYcLopSrJnTw5vk5GqzI=;
        b=BSRWSWCLKlV6pTTaUnv9+hue5ICDELiLu42CK74GBtIFUwzT6FpFDGCOYEm7cyw/fF
         5kyihTeSoR4pxcWGnRMrMGnfWap6kkaPDO677KFP0ljeAGyXfPVPiCDYqg1XpWEjAHb3
         q4fRtkUlA4YfP7Ky4YZEXHAsv8o5e46JkuZC/P4VAzMosQhjAmt2n9fbwSXg4Ozcpj7U
         6eSJJB42TIqq/zPVCkxt7WyHuCDs8PCklvN0ZkHWWAzXzmWX0BzVwOuUfuiyXzcsVf1W
         VqFHHhOM5KIAQ6tQ/juKZA63y1BOqwCvDaC9u8RvdPcu1a7RlJ9OKg9jfcXs4W/91RKb
         48aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773925983; x=1774530783;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vUCgIxbl6Q52DhphmVXEM3QeYcLopSrJnTw5vk5GqzI=;
        b=pmVnup/VTOqZLpzK357LIfJukCECP86JbxX9YxQY+8y4tfrmZqhNA07Jl6wFdCbQw5
         Mdo1cEUOOWJ2MMxM6e3ImXlHUVyth3hVr76zwkfSNOcObT3LCkG//qiw/u6iiU1pbFdE
         kjiq+MTX+I3tcoAg/laRTjp9kJZIwZ1VyMCdtjlK47+gqwKl87yvVJboz2yL8edQricp
         S6hfEtf7dzBj1944zYZ4MVegFQ1Uy6ac3NkHa5et2fNrMfLrY8dDcyUf7sjJx20aVnkC
         87m+AobBSjWYZiafL/kcbBzn3ymcVwfOO1l0DN6v/7Lv5S2vI/hEeeQSO8Qtv3o+xGvY
         QQmA==
X-Forwarded-Encrypted: i=1; AJvYcCUPt9gm6SMvNJ2cKHYb3fCmWY1ZPaK++5l2gjEbPlfGJMhCgJOCPqXzl+1jW1MkLTxDWa5YfuGGYVqU@vger.kernel.org
X-Gm-Message-State: AOJu0YykDRE/6d4uL5QCl1J8CqAml3is0ETCwYuZcbUBx59QJCkLXGlW
	1BX/JiFd7/yGkOCUMNhDAb8zwtUnLG8LbyiMsvnNp7Gs7785UHq0lyvuSd0cJDDyOhaJo9ExPlD
	6idQzxBJAarymRluaqYixt33v0NjcXwTDNEJ/OSzUFqP2GIhGAKKcjjEBzGZ9mzWq
X-Gm-Gg: ATEYQzyuNzVRWmWCWc7KF3iAdLtc1PaU7ezwEBihInt2xDBzrwC2Hi5pXrg/R0EzeI9
	6RgtZzcLUoQDzGq4X0L0qdDm2ZMTGacYtCCZnVIsVTcK3rSxBGf7xvy6SnjAslv1zF7NavhIPQm
	YcVAhmuThU7iSgCNt2jPkcGJzE21YC/O2ZZ0tIRh8KJU89MuvgUwMKrHRd1KhnxCITV56QMLTUp
	zwNLLZUlYEfBARPHZhSdBbRzvBDFdpbRVaOeLBgCOIYTtlVKqt87WIb2wap7PUCRkINNSksj3cZ
	nfPDYIb/z3Ug6VgWCnkE2JcqnrhB0MlSOA2U7NxOoHbEWkbzhCOxdMlk5mJBVfP5XjoxQIano4I
	+BYKVtqxYS9e4m483/zCOooYkrNg=
X-Received: by 2002:a05:6122:2521:b0:55f:c318:1afa with SMTP id 71dfb90a1353d-56ba70824f7mr3720005e0c.6.1773925983156;
        Thu, 19 Mar 2026 06:13:03 -0700 (PDT)
X-Received: by 2002:a05:6122:2521:b0:55f:c318:1afa with SMTP id 71dfb90a1353d-56ba70824f7mr3719960e0c.6.1773925982591;
        Thu, 19 Mar 2026 06:13:02 -0700 (PDT)
Received: from hackbox.lan ([82.79.95.133])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43b518985f6sm17389469f8f.25.2026.03.19.06.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 06:13:01 -0700 (PDT)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v5 0/2] arm64: dts: qcom: glymur: Enable SoC-wise display
 and eDP panel on CRD
Date: Thu, 19 Mar 2026 15:12:44 +0200
Message-Id: <20260319-dts-qcom-glymur-crd-add-edp-v5-0-5fc47061660c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEz2u2kC/4WRy27CMBBFfyXyukZ+JIFkxX+gLvwYgyuIg+1EI
 MS/d0xU0UWhG8sjXZ9jzb2RBNFDIn11IxFmn3wYcGg+KmIOatgD9RZnIphoGWcdtTnRswknuj9
 eT1OkJlqqrKVgR8qkY3iHbt0wgoQxgvOXB333ucxp0l9gckGWxMGnHOL1oZ95yRVTwzrRvDXNn
 DKKSSktSMNBbI9+UDGsQtyToprFDwy/zeV7mEDYBpPKtQ0YrbchpdV5Ukd8cFrhsSDlEynZP0i
 JyNpy54zmtnPtC2T9G/l+uXONSAc1SKmMdfov5H1ZcoTzhE3mZfPPIvvqZY3FMiVN0zSOIWba8
 rVubWeZFKafm9KVVglocfncVwNcMl3+zTcovn8D+RAQ5UoCAAA=
X-Change-ID: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-7ae85
X-Developer-Signature: v=1; a=openpgp-sha256; l=2530;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=wIPMFPB4UOxP3zJUBcsp1vJFBWjjlqUwCsLw/fAAHgo=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpu/ZZvnBLbZvRv9hjsi4wdH4ypLLqk5uPQv0vi
 ucg13Lt9D2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCabv2WQAKCRAbX0TJAJUV
 VumbD/4sK9As/JpF+tZi2lveNRs1mVIEwTNXCvt3cOvCwIm5YVITvyjoPitrzS68AfJUTJmwe9Y
 nFk8YohkKiLovwzObJTeqVXagSqAiCbgQ54EpJas2J5oemvK/hmPzWhPbpx2jLcx4GaHTgwtSdo
 ysaq1Qd0DmG9jhS4Z2m5JBa1dGlzKrdFJKJw/qAHlnlzq9Tt6SC/PygrWWMM3YPhF+mCoQcMkFV
 DB8f0+huKCNaHucj76dbv4M5N6i099+sOIWI1jFmSLE5X/RjjC7xbIh7P+8tKKt3v8lH3qx4+Ky
 2EybcP4I2aCRczc63I3E7BufsJN8X9eQ/iPci2e1FwkZ66esjUQG+AFt6CtZloam+ZKGuvhGe9z
 kOP3W4YKOIYDS2isytSuEBVwSaRy9VbUW4M9Q8h2d0XTPPCLN/TJ3g0kndM1F9jmixA3NrulN8l
 oe165Z5n+3pO/TVpir1N5kyWMdKir/WuhTg3JwiYXEXCQFLC8AOaH5XUCOz5m3766ohXreP8/f/
 mOnJb9oQWsMgExVH44+RaQKl1D38paPk7ySE3QIN9uw/1W3CV2M3WsZOTUeQKxVQW/HJbxuSwfs
 i0adP+lnp8KjQBULuzxinibP7xZvoxMM4PMJTjJKWAltGyOxOw4WuK2YTlPwD6sDWDxB+nRrVJv
 mXMFECxlP/Muq2g==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: aEINfczBs3Fi5iCSUwUGU4VmEodCnq95
X-Authority-Analysis: v=2.4 cv=ModfKmae c=1 sm=1 tr=0 ts=69bbf660 cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=iKs3dpp2RB4k51ZqCjcyjQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=zzY5ckjghQJwFlXv4FcA:9
 a=QEXdDO2ut3YA:10 a=vmgOmaN-Xu0dpDh8OwbV:22 a=FO4_E8m0qiDe52t0p3_H:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: aEINfczBs3Fi5iCSUwUGU4VmEodCnq95
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDEwMiBTYWx0ZWRfX/uqV1JKYv1Cb
 3QDM1XKkr1buDoibCxxshUU5xNDy/kk353joBslB7Hf70UUTFet4M7IUgyPhdp8NZZmy/BcYOW8
 lBnqzhcQCLM/GtrRPPrBqO+5jcNt7bvE0YNf9vSwT47zXm7+5Y95kSscxuAspaKrtSbtw7AsMbw
 L0Uf2s9S72V1+7Jt9H5rweeioUGbSl6cPSdoR2zB+TPloFl6dAjJsagyMSMpHDWGRsiEDWNXHac
 MYY28scdbhZ5WbmHXFrQJPx6G8JBI9XLXrlc5dcSVoJX6Pyzx5nOLUQugfQP33MO1biKfmoF9IR
 t9tpeHz92g7o+C8Ewo9ctMhZJpToDL3K16RxujQMzm2M2cUfXfxLYWpzm1dLXzkXZ/pGsz2vvp5
 lizgIP3e+iirwGsAiEGV1Y/l6pOMjPsZOWpGJIWMQ5xR6GNK2Wn+4BLdnGOZlu540Q7xW2AaDnN
 zIEn+E3+P7nVBm/xGlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-19_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 clxscore=1015 adultscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603190102
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-277782-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,msgid.link:url,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5069B2CBBDB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Start by describing the MDSS (Mobile Display SubSystem), the MDP
(Mobile Display Processor) and the 4 DisplayPort controllers it brings,
then describe the PHY used for eDP and tie up the PHY provided clocks
to the Display clock controller.

Do all this in order to enable the eDP panel the CRD comes with.

Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
Changes in v5:
- Rebased on next-20260318.
- Dropped all dependencies, except the USB DT patchset.
- Reworded the commmit messages to be more cleaner.
- Link to v4: https://patch.msgid.link/20260309-dts-qcom-glymur-crd-add-edp-v4-0-fe4e33acdfb6@oss.qualcomm.com

Changes in v4:
- Dropped the RFT as now this is tested by me.
- Dropped the 192 MHz OPP from the mdss_dp0_opp_table entirely,
  as suggested by Dmitry in a discussion off-list.
- Picked up Konrad's R-b tags.
- Link to v3: https://patch.msgid.link/20260303-dts-qcom-glymur-crd-add-edp-v3-0-4d1ffcb1d9f6@oss.qualcomm.com

Changes in v3:
- Fixed opp table according to Konrad's suggestion.
- Added missing reg regions for all DP controllers, as Konrad suggested.
- Fixed all sizes of the reg ranges.
- Replaced all 0s with 0x0 in all reg ranges.
- Added missing clock name entry reported by Dmitry. 
- Link to v2: https://patch.msgid.link/20260113-dts-qcom-glymur-crd-add-edp-v2-0-8026af65ecbb@oss.qualcomm.com

Changes in v2:
- Add missing PIXEL1 clock to DPs [0-2]
- Use the same opp table for all DPs and drop the dedicated ones.
- Drop the extra compatible from DP1.
- Changed compatible for the panel to samsung,atna60cl08, as that is the
  actual model.
- Link to v1: https://patch.msgid.link/20250925-dts-qcom-glymur-crd-add-edp-v1-0-20233de3c1e2@linaro.org

---
Abel Vesa (2):
      arm64: dts: qcom: glymur: Describe display-related nodes
      arm64: dts: qcom: glymur-crd: Enable eDP display support

 arch/arm64/boot/dts/qcom/glymur-crd.dts |  71 +++++
 arch/arm64/boot/dts/qcom/glymur.dtsi    | 466 +++++++++++++++++++++++++++++++-
 2 files changed, 529 insertions(+), 8 deletions(-)
---
base-commit: 54526d6c29ce58d5399cd4e2237d631266ebaaef
change-id: 20260109-dts-qcom-glymur-crd-add-edp-03f0adde9750
prerequisite-change-id: 20260109-dts-qcom-glymur-add-usb-support-617b6d9d032c:v5
prerequisite-patch-id: df42484b224c01014637ec5a8f56bab459890557
prerequisite-patch-id: 7ec5f802a334d96421d8f95d4d9e9773655cc947
prerequisite-patch-id: 8d9e016b49979fa817cf9eab70b809fdb9d4656f

Best regards,
--  
Abel Vesa <abel.vesa@oss.qualcomm.com>


