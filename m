Return-Path: <devicetree+bounces-251375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 81663CF2825
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A226B3027E3A
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A97D314A9B;
	Mon,  5 Jan 2026 08:45:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fO9vOUle";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XfQ4Jj0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84A95221FC6
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 08:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767602745; cv=none; b=UrwYM5gzY6/eI1bkDduCYgAMvyMuuNCE6v70h2r2Qlk9nOJwKAvb5z6duD+ArAhJO9VEcU67hYHVq1TutOZWMQ3ybMstLAd8GKJgbN7YsrOTAhMSrdvQLGIxgVxjtiWGApBDzea4r0YAdXAk8FD0WoKjBfMckCynJJv97XzWzpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767602745; c=relaxed/simple;
	bh=SMIJvydny/1uz4YEBDY/8s1j8oA5CTec59Q/8FlToeU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=KA4WYqHnxPvPsxyboCoITQdc9ildaavvmTKCj2otH1ArB3XFmSMhwj5+UJgW4cEONcohna4T/xw1DvgQJS14UBuY1/E88CX0YuBvolzz0KR29DJZR7jkIPHs4x4JaZ0bsNykNVX5HqVZVEAGTcw15Oi65VLdFDkMOQupA2ezSJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fO9vOUle; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XfQ4Jj0/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6058J2Ce3215663
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 08:45:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	owo2knkEHrTGLCudWA55pB2/WZkWvc3MvCzY7Jo38es=; b=fO9vOUledbCU0wOF
	5dLBkiaDrxyuEldtpSh1ch2RzLPu6PfjreRe7ysq84vYmVa5I9mvoHLTZFnrBLVi
	p3gl8Lu7ZE31yGF9KbYX42KPZmei8q+HBSRBc+0ZlNQo9L5JjNbSISYxTA0Gx5MB
	7pezjOoLCz0mL+m1ihr1B1ujbsHsk9r9tI/J0O5sHe1ez/chC3Nt78Li1zWsfZON
	dnOnWlh9UAMaw0/qHqgaoKtmUUF7hjXrgPCPgOOUXUd94O6RuQ9ZzmhTILlJ39QE
	Gb2gKzZKMggoSzvTdbGTg8+R5jEEZTYabl7F0DMbYvLndpFly1wbHwY8ie1iZCUV
	DKR9+g==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4beywdkj3b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 08:45:42 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-815f9dc8f43so1986996b3a.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 00:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767602742; x=1768207542; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=owo2knkEHrTGLCudWA55pB2/WZkWvc3MvCzY7Jo38es=;
        b=XfQ4Jj0/gDFoXN0Rc8M16mth7cXxb7vCtZdWkpa38qgWoG2Id8raRXI02gpHbl1oDi
         DUs/oOnpZt/oC8oACAPVDsovetahwwHM+NLagGnNiZ7KTeuzUhXXLtgcLAw9u6yWRtlP
         F6yRxo+xbldSCR32xfoGQKHqOHfRNqrh29xp6hxMSonHdgPQU5dZQepRuogiVYEXziW1
         qvDCxzWajmyDd3bebuZ1zw+sdCNLpV/to1k9o21JumDD5bZ+PVkiwWPeCUZuOSpwp567
         4poTtPAaxNFr/69+MWflOPMHWG/lhOovltVDhGU9D02Tx9HAeHnxOss3cLcfcDfLa6HE
         isXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767602742; x=1768207542;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=owo2knkEHrTGLCudWA55pB2/WZkWvc3MvCzY7Jo38es=;
        b=I8QzQJnYQmL0auoC3xqDHdXG+oiLgqx+am2ac/NlAQ06TBjZ8EV/FZcxZfT6TGM6fH
         XRHETM39SPgBFdvLDygnl7DvcA8XZnBFlEBloEr563ynqI8+jTH8AEQE8pYhXMnewy0F
         +ufKBJHtiJHhcOWiHCGbfpeL495cQiDxrRtkx5dJ2uRGCCkE/1+3GfsKEhbYLLBHFonK
         qa1T0VIAo0Txoanre3B/yeT+h0y+QKaiL8qWbjU6R2OSe8dwki5QQ7oBN5eKy61O+j+A
         0t1bjqd2ZfV7DR2/NFBe7cCK68972VHLys0sMJShBs4rmFVKlODX5pDeLJ5xXQC5PUhC
         00Kg==
X-Forwarded-Encrypted: i=1; AJvYcCUhMj5cM7Ojms6I7dl9uKVeVGSM+SUU7YGCtPGMi69VfNLVs9LSytiFsdO5WTxTclbFEdBOlHDJegtJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yyy+wDkLSlfOqxWKZWul4o3UYr+845TrOTWHXuBxKjVat4p8fZb
	N/w+O3Q8TtoywaKaAmjhwxWkTME5VmSF2fDhHW6Q/J8PQAK52j6bsMzchHiKHhm3881aMaFD6Ei
	aBVpQQ41HjainRgSbe4kFz0q9IzUUlIQ42MKdGUtq35qiFgYNYxPloAgbfZ9wuCue
X-Gm-Gg: AY/fxX6XjT/AJ3yVgHNcD3yhmT8KPcEyoqRTfwEU5kqhlS/oAMARA41iLY3b5ZEjyHC
	sw/LExDI/6GMMWsb+sRdjWXDloVmwXt7UQEzhf3FNsPgAkRr6i9DucPZDLx7MptslzavL0aD4H/
	aYGbLzkS54MS1kA0iOO5roA4ylM3p3AxYsyRaiHzN9J1wBKQYBSYLMNijOPwVmzZF7j+gCIYssg
	AoLBarAgsLP/I3ZZQHVCRSIMaBqZXyFS5o8AggcwQZXBjoUqYKLoIcrOmIsJ43pCNTY218H1Tyt
	U37iSDIECWq09zEVeuQiOgk2qn0GUdh/RD0zXcuLgb51mQs+8QSIheFxb2zJEw+0eIAvUk1rXRj
	l5cXSghxw4w==
X-Received: by 2002:a05:6a20:3d05:b0:35e:3cac:858c with SMTP id adf61e73a8af0-376a8ac34f9mr46386486637.33.1767602741965;
        Mon, 05 Jan 2026 00:45:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMvBhc0ZbR6k0FaY78RVr2rQjEFNd2W/FOAOP1PoRx5xHv1FpN6/pgW2Pttoo0pZc29JnwuQ==
X-Received: by 2002:a05:6a20:3d05:b0:35e:3cac:858c with SMTP id adf61e73a8af0-376a8ac34f9mr46386462637.33.1767602741374;
        Mon, 05 Jan 2026 00:45:41 -0800 (PST)
Received: from [192.168.1.102] ([120.56.194.222])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7ca0b587sm41399110a12.33.2026.01.05.00.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 00:45:40 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20251217-dt-bindings-pci-qcom-v2-0-873721599754@oss.qualcomm.com>
References: <20251217-dt-bindings-pci-qcom-v2-0-873721599754@oss.qualcomm.com>
Subject: Re: [PATCH v2 00/12] dt-bindings: PCI: qcom: Move remaining
 devices to dedicated schema
Message-Id: <176760273771.8418.10713849546494908131.b4-ty@kernel.org>
Date: Mon, 05 Jan 2026 14:15:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=Sc76t/Ru c=1 sm=1 tr=0 ts=695b7a36 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=3dEILRYKsVIWdVk4w2Qziw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=bC-a23v3AAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=6q_225CX-kZnqSqlAqYA:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA3OCBTYWx0ZWRfXwqyaAanx6ELa
 itORB0KCAFqnBtP7vzgtLNIxCN9HKVbrzO8vCoMNfOLSqc1Ep5V+pFm7YQO+wUYBH8DYWVWAyW4
 lnqiKKdCk8+wMbOqkPMJCaTvwQ+Oc5+qFRqJqchog4w6l2x4ycQQVWl3qEoPFRKTQ1WKVAF2tsh
 onWi2mxlTmvYPidgnzPqZ5YGHgKkwDktdVkdaVTz/qteseb3ES9eDGj5mmyFWeyyQPc6++IKq8z
 GJWmo/0RKSgTSVrCMvHokzdmc3ENHujnhNG9h0mUJC2shCzSnmVoEHfPx7PZEZr+1H/K4OyZuNs
 MjIbedPxielYqwHioTGPn5nM/A+hJUxpRShe4WlO92H2zWSG3chIhneeoQO1SfG5+NDrnV/9f9u
 oXRpkR+NXyissUHcd+4wL8cbj/TEKc9efNAy/w2IttyxcXqlxUTmQjNgZfSaaxp4Fq3/1QvYlny
 8RQAr3ARFRWDWztmoCg==
X-Proofpoint-GUID: a6m6Pwv-v2zBVam-F8AcWYjHqm732QAC
X-Proofpoint-ORIG-GUID: a6m6Pwv-v2zBVam-F8AcWYjHqm732QAC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 spamscore=0 bulkscore=0 impostorscore=0
 adultscore=0 phishscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050078


On Wed, 17 Dec 2025 17:19:06 +0100, Krzysztof Kozlowski wrote:
> Changes in v2:
> - Rebase - Mani's email address changed, but I think I used the proper
>   @kernel.org one.
> - Add Rb tags
> - Link to v1: https://patch.msgid.link/20251103-dt-bindings-pci-qcom-v1-0-c0f6041abf9b@linaro.org
> 
> Some time ago I already moved several devices from qcom,pcie.yaml
> binding to a dedicated binding files for easier reviewing and
> maintenance.
> 
> [...]

Applied, thanks!

[01/12] dt-bindings: PCI: qcom,pcie-sm8150: Merge SC8180x into SM8150
        commit: b73d6672ebc1e3a52b67585f28daca0d2f5bb4f2
[02/12] dt-bindings: PCI: qcom,pcie-sdx55: Move SDX55 to dedicated schema
        commit: c86e1f39f6e4c8425c5b55f276615ae16b5ac57f
[03/12] dt-bindings: PCI: qcom,pcie-sdm845: Move SDM845 to dedicated schema
        commit: c80dc8121d3af8f33413bb0f9ed9e81e2c576e1a
[04/12] dt-bindings: PCI: qcom,pcie-qcs404: Move QCS404 to dedicated schema
        commit: 78aa7d0d9be697409207309013051d080c243421
[05/12] dt-bindings: PCI: qcom,pcie-ipq5018: Move IPQ5018 to dedicated schema
        commit: 7366e19379c75add8ac407439bf9ee8473cab7b5
[06/12] dt-bindings: PCI: qcom,pcie-ipq6018: Move IPQ6018 and IPQ8074 Gen3 to dedicated schema
        commit: 06f4ac1f7673632eaba82d04e578ebb9b783e96b
[07/12] dt-bindings: PCI: qcom,pcie-ipq8074: Move IPQ8074 to dedicated schema
        commit: edf1701c86c91175c0b978d50cfda418516d8d43
[08/12] dt-bindings: PCI: qcom,pcie-ipq4019: Move IPQ4019 to dedicated schema
        commit: 769f6826d5ad8baef1238b10cc97a7b0f678ba43
[09/12] dt-bindings: PCI: qcom,pcie-ipq9574: Move IPQ9574 to dedicated schema
        commit: 5e8bf1c1d5b7f1129148d537afc8feb9c9f883a1
[10/12] dt-bindings: PCI: qcom,pcie-apq8064: Move APQ8064 to dedicated schema
        commit: b673d06ea8449db084cabfee2844f17b6f98f22c
[11/12] dt-bindings: PCI: qcom,pcie-msm8996: Move MSM8996 to dedicated schema
        commit: 0eaa8d1c36f032d6023af96cd84e8b2ece0d6922
[12/12] dt-bindings: PCI: qcom,pcie-apq8084: Move APQ8084 to dedicated schema
        commit: 72b39430284fc4a7a960133b70137c24fed63b74

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


