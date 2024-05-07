Return-Path: <devicetree+bounces-65353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB308BDE43
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 11:31:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0615D1C22052
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2024 09:31:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F1AF14EC57;
	Tue,  7 May 2024 09:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="bdVa1d5o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A853914E2E7
	for <devicetree@vger.kernel.org>; Tue,  7 May 2024 09:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715074288; cv=none; b=np4iXn3zgnjAcPhmjVFyCcdi5Ivjs+CYLT/TKQodJlBNLG30fZBLJZ8erUbMo2ALq+t6qQKSJBoZJIbM4uwmG9LeZtcIeG6LoiDS0vPYQZdjC2L+1bsrxXofnE2spix4YKJlw4AtDReRPTc2vbimgoNTJAlhZa+t4Ay8TZ8PuBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715074288; c=relaxed/simple;
	bh=YXYTyieouPykDC310n7wSLN/QxsjHcOzMjfiWLiRj30=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:Content-Type; b=XcUijkLLd/3NsWVJUmsLiE1IXZPq098g+zvFeO7CKZwzMir1YDkzVUTxy3N4XpvGM6mmQnckKJjrvO3TxaX88wg27hp9JkjyS40xxQbnK1vkSllkOfOtSL6eVcRnETNnBwVu5thaIsR9AI2MUBlTMC3Bc+SlDkvG74uxV6JCyHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=bdVa1d5o; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-41b782405bbso20192805e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 May 2024 02:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1715074278; x=1715679078; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QaiAi8gH4m4suHq6HQ5tlie7l56Jp0CtmxT54GAdTmE=;
        b=bdVa1d5oXOnykYEIiO0g7BkByoW1nSIrfLemM4sogddZHDVoP1Vapt3YU9cr/kugKq
         q2j1U01pGGP1LPYMHWf29LHMO6wbNai7NwDIUsBqIUWoQN8TJw/8yalmq4XjcyR109GY
         i50Has4DLt/06x0C32FCO/eIwHlMMBKOjny8cmKdw6vwbjyCl7b2/U+qIt2egdq9rcM7
         7K6O51aEX5YVIwmSYX80acGBMcgPxAesBVUAhmmVQfeaA2wV/jPVD7DsRd090woQ+loT
         rlmMhGuuPn+BwmbQrmx2ioS4Mh+bQtqxdifK6TLa25trTbT/bwlVO9k6CWYgTZwLPFpu
         Jh8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715074278; x=1715679078;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QaiAi8gH4m4suHq6HQ5tlie7l56Jp0CtmxT54GAdTmE=;
        b=aOvsumCRVhBpJDifajxSLG2OlGVjrqL6iLo4uTN4NyiCAPV6io/D3PdYnuTMLqxrGS
         twRGrxFgLOUxQjcK7HrHkK+CyoCarjjY7HYuOi5LMx/tnIQecaaBpk3P2VR9ArFwHpmg
         z065SC/qB8PRQp/jFJEcMeFG1hLo2cfrNrsQbp3kb9z7sb7G/hTrTSlA22AcIlTAwc1h
         IkykPLjt+yAg5ZcvWF/GNsfKAW2ui4f9njCm08io5U68PJiFYI7VMoEpVdULYEgTZJy1
         mUVdIrFDSR3MTVg/Z4rEGzM/k1ZAIzrnQM86q46iDpe43RcS+4Q2e+N+qwNDGU2VIpZn
         jvww==
X-Forwarded-Encrypted: i=1; AJvYcCUVGL2nOeDvF3S/T9zLFDJTcNO1UCh6s4PfbDBtVGyc47Ll++kkThx7mBVwNNgMMHQU4LgvWdz7K5/CH5Ics1J1JA9ppPJcgFoiQg==
X-Gm-Message-State: AOJu0Ywj3VPxzGRKqYuGCL6MmebHJx+BAGksmb66ZOfgY208/A/ep9O9
	/z+TTieqMNYK/zNyQ8GoItz9sSFIMtbHJNfiQVwIRtcU8t0LtA/Eyby98WApq5g=
X-Google-Smtp-Source: AGHT+IFAdPPMyv36/6qTKc/1XBBR2RC/Y0bPwgCWlT1GlZKyMZ5AnsaSV8aN9REglgS5HWDQDusS1w==
X-Received: by 2002:a5d:670a:0:b0:34d:990a:e4cb with SMTP id o10-20020a5d670a000000b0034d990ae4cbmr7359729wru.36.1715074278069;
        Tue, 07 May 2024 02:31:18 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id f3-20020adfb603000000b0034dced2c5bdsm12517710wre.80.2024.05.07.02.31.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 May 2024 02:31:17 -0700 (PDT)
Message-ID: <1cf08b56-a247-431b-a24b-69f563f49240@freebox.fr>
Date: Tue, 7 May 2024 11:27:09 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Marc Gonzalez <mgonzalez@freebox.fr>
Subject: [PATCH v4 0/3] Add support for qcom msm8998-venus (HW vdec / venc)
To: Bjorn Andersson <andersson@kernel.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Changes in v4
- In patch 3, drop URLs in comments, keep one for reference in commit message

Marc Gonzalez (1):
  dt-bindings: media: add qcom,msm8998-venus

Pierre-Hugues Husson (2):
  arm64: dts: qcom: msm8998: add venus node
  media: venus: add msm8998 support

 Documentation/devicetree/bindings/media/qcom,msm8996-venus.yaml |  4 ++-
 arch/arm64/boot/dts/qcom/msm8998.dtsi                           | 48 +++++++++++++++++++++++++++++
 drivers/media/platform/qcom/venus/core.c                        | 39 +++++++++++++++++++++++
 3 files changed, 90 insertions(+), 1 deletion(-)

-- 
2.34.1

