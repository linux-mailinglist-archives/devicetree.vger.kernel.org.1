Return-Path: <devicetree+bounces-211409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF2EB3EEF6
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 21:53:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0685A1A83874
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 19:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DD6B32ED53;
	Mon,  1 Sep 2025 19:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fi9YLFKp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498DA26C3A4
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 19:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756756252; cv=none; b=WnMY/cmPKHJJ5zZacrblme7uPidAPsf9hgty+TBu92JciTFtQrf8AfPbqhSHmXSFHFfrOmalhSn0LY14RPBX3uw4o5VEITfgQ9Y79gyuuoayC+0ghZayoA99JNRD1P+eCxCUAuQB4RSbmdb28l42IzwTK85wZtOJY8wmq2nEz8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756756252; c=relaxed/simple;
	bh=2HBCvrefasfSLde/LtBz6m/Kud5gPwXS3AqdFSSSbuQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ou0Wzu//LDso4ZB0BBOg+L73LL0Ala37K7P4T6z73fQp2iYOnT8TMkWaei1oCIxWidMYBvt4ogEjG3WNuyY2uv5169ySGkeOhDWeeUf2clDbagKnR2Gl937pVG6fTvzQxyzu8q5A+VkU30ftqzBc1Z1ZTVrxB3pwfTtML4hCxL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fi9YLFKp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B46Q7028765
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 19:50:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=DOwAoUlzuqa
	7hTeE48P2QvIO2GkY6Mj/VfyeQ7l9coc=; b=Fi9YLFKp+kFYSuomdzo3n5fGRLw
	vsG8mEIk2mA461kLh87eteALU+wUuV9kx9exquADIQY8Tc7w0+IhbBcdVYwB2FtG
	H3N38gdxwuXwu2ak7MGaMBCugqmYkwtDfpkQYK60vxbNzzD2XMRJibpmjmQWom0J
	69uX4QXA6Nqrlw+4Ao19iYF3lFpFr/fbp8DvgDNZGfMo1ruAfNBTOM5m0RtNLMU9
	6LsO9OhyT9FZVHNiML3b/dbYE/q1cWbJxHl8A7V/pWwQAz/P+j7YlxhZ/wQfd8+O
	SWY5QgflXMlGZxZsuTUcWs023zrN1VZ7JriVL2FbUjt7gLcK69IlNercujA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjdpjs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:50:47 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b308e4de16so107783551cf.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:50:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756756247; x=1757361047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DOwAoUlzuqa7hTeE48P2QvIO2GkY6Mj/VfyeQ7l9coc=;
        b=uaS+3qiKPzgrZAF+/ttQOohYZ3vfhGHpxI7S9bYRd5gU24QNBIc73vcjefrzjBdwxu
         YL0qcFFFZDIeAv6WiS7AFMO/E+AH3tCKnQ6LU9ar4GRkec1opBFxHyDMqrMJr18Po+W8
         8Q7tN0411FQP6I+c/kH24hH+Bw8cNMb0Kc7Hvx6b9JpH9zDIjqLb6GAlMf4iRkwzs+Mx
         6TOQHw8PgJHSihlFqMpbj999Ubf+7X8/4+9HaIZnmBurwt5fgoJ+eZ1ITObeajI7IIJd
         6/6II6oIpSBi2pZH1GH2kimoZjIsHvETFckZi4ODv3xI3/9RJFZv5lDtFhS7g7bJIpbM
         /D3A==
X-Forwarded-Encrypted: i=1; AJvYcCXThyniMVndsQeSM1IvIF/Pf+ORjw3kIlFshjGCTt9raoXJCEhLV1f0o91Hy960Eb2uNpMS4gDE/gk3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9c7zoxH1f2Ds9yvOFJFFfqe0kbfhggPwpCt9FsxZzy6jgEjob
	3JeKSqRSz0BdQ+IVtIAh6NQbH/dtBZi9TFX2J5wArceDSi8xiO3xHRm8W0Mh9Hskuu2kH80sFxq
	u7FCDDLNZD4xKGp053oziK5Rc0k3H4T1J9Ak4EoCXIdZTdGK+LTiF4up9XxubAsnmYWugWUzg
X-Gm-Gg: ASbGncvJKw7d5klYXenybPSS1wtFGNbXrjGV7iALoJMduASIxr2+TcsdZHCnmb0QdGL
	EqL+Gt1OI6pl7FofIuD3itnA1CLX7fM6ds6MnqrX71euTb/57cvjgM+ilP6YnunRElvJHTbx54Q
	lfZbKQkFDwv1qR/o56IXkQrJuVuwtjRBRFJNRscAyVqJ212s1pjL4NCbKAwQf7bWlM94+t41nkN
	U/F5ZsfFqHWXNYLZGFPO+7ac9IqUYIuU8JsXuZJoMfnlYJXRksYTGWCW5sNpnEA8GHRkKvHQRdY
	1vGsc8gnDpOoHaxnROpalYEw8ESzh4nuCWrpbGToAOFFDsQTzGldnw==
X-Received: by 2002:a05:622a:1a0a:b0:4b0:61fa:19b5 with SMTP id d75a77b69052e-4b31d9f0bd4mr103979791cf.24.1756756246960;
        Mon, 01 Sep 2025 12:50:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8lcuLrPgwq9ga93n+Apj7m0TtKUqMmRocQnUzq1ECRFE6bweqLXtt8pEYlXV9Ca3WHx/wNQ==
X-Received: by 2002:a05:622a:1a0a:b0:4b0:61fa:19b5 with SMTP id d75a77b69052e-4b31d9f0bd4mr103979391cf.24.1756756246315;
        Mon, 01 Sep 2025 12:50:46 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d7330e4bc9sm4653705f8f.10.2025.09.01.12.50.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 12:50:45 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, krzk+dt@kernel.org, vkoul@kernel.org
Cc: conor+dt@kernel.org, srini@kernel.org, yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.dev, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 6/7] dt-bindings: soundwire: qcom: Document v3.1.0 version of IP block
Date: Mon,  1 Sep 2025 20:50:36 +0100
Message-ID: <20250901195037.47156-7-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250901195037.47156-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b5f918 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=W-ialWlWjSFIadUgVrgA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: mwI9P9gL-Qae0RjJ5wcZWX5VLuyg__xf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX5kXszvuonPS5
 EtdtztxCFPIiUzOaZr0AMrIxVMuvDBgi1yEy7SzVP5XcSNXv0ViIRMwI8VeDn/BHU7zhoGqHSr4
 7y0BJlf4Ge11dK27+V1uVQUYKq/IX1b/61oBksOTmqLvXI4rV+FkwwktRuSuDXo1XnNj2nVhGE/
 ckf9+Gm096pNILB6Ewq5+qbNOl30FFayKv3jE5+yRuMjxryHZ+7nUz1DE3CDHo1yb5KxwIYZ861
 0OtkN/gfRKh+fdC4TZ8tWBrom3WDhKyMT3SQqLIexbLdIoYTFEgR0JskwXJa03atKJkBsNRHemE
 BnyqIh1XSFgWA/3aonXahsvKWLGc3aJm8Ss7Grh6fPP7S1oAlViJ0LDBtqWgx/7eLxK1Kqi/NQ+
 +x/gzH8Y
X-Proofpoint-ORIG-GUID: mwI9P9gL-Qae0RjJ5wcZWX5VLuyg__xf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_07,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

Add bindings for Soundwire controllers v3.1.0, which is available on
Qualcomm Glymur SoC.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
index 7ea491f7e828..003023729fb8 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
+++ b/Documentation/devicetree/bindings/soundwire/qcom,soundwire.yaml
@@ -23,6 +23,7 @@ properties:
           - qcom,soundwire-v1.6.0
           - qcom,soundwire-v1.7.0
           - qcom,soundwire-v2.0.0
+          - qcom,soundwire-v3.1.0
       - items:
           - enum:
               - qcom,soundwire-v2.1.0
-- 
2.50.0


