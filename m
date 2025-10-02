Return-Path: <devicetree+bounces-223309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11828BB35CF
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 10:55:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DEE316CB92
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 08:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2DDD2FFDD9;
	Thu,  2 Oct 2025 08:53:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="g6C5zS08"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A81F02FE561
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 08:53:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759395192; cv=none; b=ZEHV7A7SZqcZuhYYUHcbABciwC4TTGJ2bWHVhN2G08EvYaWuchj6krShprxEVUcW6T4aM2hU3dLkV9mqSquFlS6Mvur3YvzNeuY+BEgsoIBz/JrXAdJGVeZcdkKKEszuTvM+zH9ukCKrX+rKSU41olRdJp7eTyOoRQ3R4tpmHsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759395192; c=relaxed/simple;
	bh=uC/+ZsvsvyQJAsa3f1YZ1SlG+IQTK89rfp7MY4WalD0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MIcXjRfyuGSpvReZhfeODtLuPbTaPiDFsgeomCa1wWk42gtnNVkQ6QaZf3Q2drnbcCOZnF/IoaQzsHETCQrcoXh7btu7Zi64rYfo4CRy5xwJsqDilylfStFhyDLFgHtbLzGxrKybQkVwk5W65tg0XjgWwgX6QYS0TraI/s3Wt2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=g6C5zS08; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5928neQe012279
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 08:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BHDP8acxmTfrTc74mGbEFI0EKFoMUUkCRGJ8p0QKX4A=; b=g6C5zS08/lBWHPyT
	Xsre7COafcPH38dV0jjf/Eu3biHSK3ceZBg3yKyjXGzZyBaDpvrC8FtIvEBqdBMb
	UJkX2hnmK0IFC+cnr0wBvaO4JZ3IZEfkNL5zl98pl4KGVY3dN4Yisp5dcWQByhwr
	0S5qG/e1J0q28uvrO06WsJBX2vcQuTyCzAyiYngI4CF/PRjLDmv2qNp2iCEzfr8R
	1eflE77CsRElCGslWf+YORDOg42hvE+Rskf8u4uiRZceuDGA1Uj4W0hzDxdayqCd
	d717hCrgxkxAZUF7L/BVW7qB7OmTGvx2mPtwv7lTX8eqnyYR0RIaC4ARXfxd8x8o
	2VbFUA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e80tye9q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 08:53:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4de35879e7dso26766971cf.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 01:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759395188; x=1759999988;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHDP8acxmTfrTc74mGbEFI0EKFoMUUkCRGJ8p0QKX4A=;
        b=hg3tSwLofpsk5Nl01ux7/4HYHuQSpf1xMX9t+zEsCQecUcfBkznCyFp0bKkzwVHThR
         XpFNg/4C4gOcnhXzujgqc2wPd3syfUG/Y9denUfa/N9V3BlJzfHAygKQX1CmCbDZve5i
         Rc53XWS2yOPLWo3N6hE8eonf1pgHZBwZeSenuvrfluYvJir5bbf6F3xFjERxOrcpf2y7
         Shu5HBjiH8wivKyOfJ2UQ8C92eV0A11JwBGjPgBE0nrfbywr5pKXUrzZBZr4HJC+AY3X
         UlCoYpOAcDZAS0N/S9E2OkDOnhiLGiAFA/7+z3c0a2bZxRynCSv3FT4gJNhAHgRd6VjC
         ufNA==
X-Forwarded-Encrypted: i=1; AJvYcCX16d9COsvW8q2p3l44wrKxNuqrzrk5+dmtmh2ZaFpGhZEF8AUSvAADQD+X0+zSVPDhcXs6EV9skRzM@vger.kernel.org
X-Gm-Message-State: AOJu0YwGyQAfBMNqzqPu/jDSBB/WKvzzHA224Mf79kFxPaI631eDhmIA
	RwNgzuj7w4x1atnrRnzH+XwblvuPfKPtsduDpdababgmcSuMkW3Q107x2UWSLYOGc8HpKyHnAcX
	2cOzLqxWV9iQ6iwbUQv95AFJl1bsYKw5Vs4fMqQ9WnArtoFwCA+DwBcYEeIRvWzOy
X-Gm-Gg: ASbGncvLmjvcYVi9jXJ/N6R8urIBDDMt4uPaReDStc6hPp/ot4sv+6GvQG3QbqcDwva
	E6drxlZ3c1Au0LFwhAwRgJfoWMRVrBr6bHHduixZ5C45OFLQkqnlXZgr9lHr3HuARwKVlODCr7+
	BekGX+yVQeTbjhUnLRB9uQBvqbzWCErwIk1uXorv4ANguqqPysgUpi7rcXCvsQXnFd/RIJc057o
	7c7+fUUGR66jtRpMmEBXUxC63zIqTN4dd6NfDkyRUVf0Ae8+Mxu+9j9KBFYUvRMZDe0Y9WAVJ7/
	j4bsrKSa8nHrwlC1xRByUvxkEzzu+si0ydQ/1hzTU5Mu63zgcl/kujk64BGCdMdWwjgFnJFVYTr
	0gU1w7SMBV6Mz0wN5Fi7BJTDX3irYhe5/JQmG2XNeFWhtWJ2pvFQA1RbSGg==
X-Received: by 2002:a05:622a:2507:b0:4b3:2dc:8b84 with SMTP id d75a77b69052e-4e41e72fe8dmr85907951cf.47.1759395187565;
        Thu, 02 Oct 2025 01:53:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaMDSbQXT/X5ft+mztpjyq4k0xqItpkqVhNpbUiMPK3YK4uqfrfHN/vZGFwSso7xrqXEKnFg==
X-Received: by 2002:a05:622a:2507:b0:4b3:2dc:8b84 with SMTP id d75a77b69052e-4e41e72fe8dmr85907681cf.47.1759395186973;
        Thu, 02 Oct 2025 01:53:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba3124bbsm5207351fa.27.2025.10.02.01.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 01:53:04 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 02 Oct 2025 11:53:01 +0300
Subject: [PATCH 2/2] arm64: dts: qcom: msm8996: add interconnect paths to
 USB2 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251002-fix-msm8996-icc-v1-2-a36a05d1f869@oss.qualcomm.com>
References: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
In-Reply-To: <20251002-fix-msm8996-icc-v1-0-a36a05d1f869@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1355;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=uC/+ZsvsvyQJAsa3f1YZ1SlG+IQTK89rfp7MY4WalD0=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBo3j1sfG2EgDuJQwjqi7G+27lREBjPBYAO2A2jU
 6SVN+meemOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaN49bAAKCRCLPIo+Aiko
 1aLJB/0S8lLBTmGEQl6m62L6x48MDBiCoDpduHypZB2Z7eVJNEJeB1lQKvwio3a3n5ACKyqKpEE
 h7pdqDX7kUaMYu8npni1m6pYUlEYKwVZKZOvJuXrRvi97uWmGFA3gOdpZyuvPLmWl+tVdR9o+QM
 ssTn+co0VP6AkqWdGR2FjV6JNCUfRaQrlJhBPZB48xImF/S4VFsRKJmzTR9dJALNTCEn1mLy5nS
 frBIqx60IY8gPWvRFwwrGdnvGw7sGDwkEoecy0UkS0nfAOD5MQJqjnvFRbWRHLrsfr+/RnhO8U7
 wBRpOVXLqc4um+5T7pRJ4WpxpJFIZPbuTDSoVKfSsXoi+Vay
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAyOSBTYWx0ZWRfX4FozqnvQwT44
 ZY+JzmmMyFkWs1rW9YWcQfYNji+i6GSKc0LmfvGmt6YJWEJ+dx9wRT5FLo9uJQldeNQ5ipnPgCG
 nF8ZNCdywzHwsQk1Dt82gjVe4YnnqwI1LHiIXMYuBvZ6y1yYvEIYFv9b1gH+74QkUKPsBYnR5Em
 TKFRr9UE9fzDW7a/5VWmHQmzJ+8nV03mX+Gypsnf+qaEizIwr6BfHg9HPk/XmZD9ugF3EGLgjYR
 YXhC0TrHrTsubxAUhHAowntxPTQivACbGWng4J8MrceX+C49fscxfyKGSFahvQaFFxoHC2RoFOc
 JV5X3RDyOe3NlAjCdaDC0u/BPlrbf4j0gUtt3xihg70OSzdR7tEzQaEjYr+tkM0XUl5tW0uemlW
 KMhVJa9kDESvg7g7oIgx1U7XQU9JGg==
X-Proofpoint-GUID: ednfigyPjJE-XfAzB-tMCx46bNEEdavJ
X-Authority-Analysis: v=2.4 cv=OMkqHCaB c=1 sm=1 tr=0 ts=68de3d74 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=CwT6ynrRfNtyUp4jFLEA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: ednfigyPjJE-XfAzB-tMCx46bNEEdavJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_03,2025-10-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 phishscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270029

Add the missing interconnects to the USB2 host. The Fixes tag points to
the commit which broke probing of the USB host on that platform.

Fixes: 130733a10079 ("interconnect: qcom: msm8996: Promote to core_initcall")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

---
Note: without the previous patch applying this one can result in the
kernel stuck at booting because of the EPROBE_DEFER loop. I suggest
applying them through the same tree in order to make sure that the tree
is not broken (or using an immutable tag for the icc commit).
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index c75b522f6eba66afeb71be5d81624183641bde71..33608b1d7d060b0a614357929eb3404bab46ecb6 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -3496,6 +3496,9 @@ usb2: usb@76f8800 {
 					  <&gcc GCC_USB20_MASTER_CLK>;
 			assigned-clock-rates = <19200000>, <60000000>;
 
+			interconnects = <&pnoc MASTER_USB_HS &bimc SLAVE_EBI_CH0>,
+					<&bimc MASTER_AMPSS_M0 &pnoc SLAVE_USB_HS>;
+			interconnect-names = "usb-ddr", "apps-usb";
 			power-domains = <&gcc USB30_GDSC>;
 			qcom,select-utmi-as-pipe-clk;
 			status = "disabled";

-- 
2.47.3


