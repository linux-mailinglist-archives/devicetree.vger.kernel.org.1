Return-Path: <devicetree+bounces-54968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 133E68935F3
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 23:11:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2B79281F53
	for <lists+devicetree@lfdr.de>; Sun, 31 Mar 2024 21:11:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3EBC148857;
	Sun, 31 Mar 2024 21:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F85BJ1JD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7083A148318
	for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 21:10:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711919448; cv=none; b=k4/crTILx9JCPlxyHDGg1J9dJnGrZK5J00NY9H7LIf5nUxUaxT4gUzGMjedWqEmQjJPiuR68+z0KEDemAs4s/Xm5wGroJzbQD7cd3SXmkmk/O0hOalDoVkOnXi23eYWlmnYJCYK5HcGzMCx+316qTZMRNQH4vz1jJpvXMQapEyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711919448; c=relaxed/simple;
	bh=/bUJ2vZiRJ1BUQBh6+bQarLWjKMSmzFMhLsh609vsNk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=gBUBWfSle0v88xOhPar31ygyau3QkfxS7r8vjIhfP98Jc9WOmkNDYuQFE6ZnE5qAb4PF1h/jE1clpvKyi0+pTpRXNO8tF3sFViMcTKZZ+KB4mKG11xEdDRHaPyFOA64XeTeGKnr9j7GjPM+RiqW6OziMjpv5bbPhLIlb1F15gLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F85BJ1JD; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d717603aa5so29036181fa.0
        for <devicetree@vger.kernel.org>; Sun, 31 Mar 2024 14:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711919443; x=1712524243; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qDNTwOGu14ahbhHwBh83VA/OwiG9cy/4b9joLOffRjU=;
        b=F85BJ1JDnCe9dt3GJVRB+UMciptU4X8GYmjO9EltmXi7nOqT406ibkZ014SzxyyVXi
         orcTQ4SNOyNiF0kHocNtuPegp+A6a8PO0tRfIo/8yDS2OfvM3PKS3PQBML2lk42M+aht
         PMq6AbdGHhW5fEFN4Y9y7gzDzMEZ/PP7pLp2H5HtHHOsSJVROTAHtJBoYHeOiUMF0laD
         oazWzf42/0QpJShF3lRMQ0BSrWPzDuwAxgXN47YYyBgZoGa8fJOl3M/NMxSARfG++dTh
         NbAwJXSeBQaG7FWVY/YHldROamYLjNZHOUK7W735LsG3MoUPttcsNOxGGyRKd00DodsV
         O0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711919443; x=1712524243;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qDNTwOGu14ahbhHwBh83VA/OwiG9cy/4b9joLOffRjU=;
        b=PPhR1hnusHYPqwNTw7jI5xg9N75eXn/2TGBlsX241Cs0Tx9RFrjcDRcTUrpjW1NCmP
         1HQ0ATB81HMnKUivo1hdgqtsXGDxcuMdrl+qOPNkPCPqHUvojr52YlQnZapEkXPqGyEC
         HxrMIcoMTkn0N/zZPMP/3t6z57EvNimF0r10mDICMPBwKbFKZeA9HYkhJBP4SaJ0ip9I
         Eq4rNresCbVKj04wBsaZFamUkGqXI23jJ1TwGTSQdwtN6ITF//YpA6xoEfc7yh/71TO5
         H6N8+VmP4SlUrV5FRyhnFCPT2EudAD2Mns766/B1HjAH08WzYR4S7Tx1ZTYgnQGeApuV
         DZ9A==
X-Forwarded-Encrypted: i=1; AJvYcCVnqe3joAhIeXdPtOIoXu2CGrfRehNqzuC2ti3EamHRBMm5tQyMTO9U/D4Ca09hhuumIK2xt9343VvUGIjNf/GEFprqKWCaAnQpng==
X-Gm-Message-State: AOJu0YyyDusco7+3mMfv9y/o98KKV9RuEpmRyMhBzz9fVwo4m94kOgN8
	iHO3Msyj3JEPGl+9XFPJRwkyWqrLLzdYzlJamV2CueQ6SIDZ5V792j/aulC9paj6HNonVXtg+OK
	j
X-Google-Smtp-Source: AGHT+IEPx+7koAEy9piLri51NuxAiKN7NMUIFB2su1AyCZ/FuZ4h+3UN9IFj/2mN2a/LzgwynuFmrA==
X-Received: by 2002:ac2:5fb1:0:b0:516:a010:f1c0 with SMTP id s17-20020ac25fb1000000b00516a010f1c0mr2165696lfe.63.1711919443389;
        Sun, 31 Mar 2024 14:10:43 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i1-20020a0565123e0100b00515cd1d5c99sm1033553lfv.85.2024.03.31.14.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Mar 2024 14:10:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 0/3] arm64: dts: qcom: msm8996: enable fastrpc and
 glink-edge
Date: Mon, 01 Apr 2024 00:10:41 +0300
Message-Id: <20240401-msm8996-remoteproc-v1-0-f02ab47fc728@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFHRCWYC/x3MPQqAMAxA4atIZgu1/mC9ijjUGDVDW0lFBPHuF
 sdveO+BRMKUYCgeELo4cQwZVVkA7i5spHjJBqNNo2ujlU++t7ZTQj6edEhEtSLOaOa2IVdBDg+
 hle9/Ok7v+wH2Yff9ZAAAAA==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=779;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=/bUJ2vZiRJ1BUQBh6+bQarLWjKMSmzFMhLsh609vsNk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCdFSLc0+lMGfK8fGM2T9IMHyyu/gOaHRVLGHr
 mYLirWJ0XmJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgnRUgAKCRCLPIo+Aiko
 1XREB/90yxp/NoMGbtzkgCoNM8Jvkvhdv4iQ2ofeKDbxSei5H5zZFM7ZeTbxLse4RM0BiLJULCt
 zFVN993xR9iK6OY7gG6mG4X44gm0LoFjlCo3kWmwplPvdCdX608m6UK3fPRV/m/Ilc00NGWYPY9
 pnqzqELlZpp5om6oEDG8byMhlQcAdC170S1UTWoBl2BKUYbO6FAuxtznyNNdwbenGw7H3KZwRvS
 7nxiIMfCBVC14oxwHInafk8++IQrKmfHo7B4/eApejvJ5KO9twtdMdy7z3dWw6Gyp6JVtxMNKli
 uHyRzrfugeXZ1nC16KyhFGeqBsgBF4/C3X+IC8JRq6a5XgwU
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Enable the FastRPC and glink-edge nodes on MSM8996 platform. Tested on
APQ8096 Dragonboard820c.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (2):
      dt-bindings: remoteproc: qcom,msm8996-mss-pil: allow glink-edge on msm8996
      arm64: dts: qcom: msm8996: add glink-edge nodes

Srinivas Kandagatla (1):
      arm64: dts: msm8996: add fastrpc nodes

 .../bindings/remoteproc/qcom,msm8996-mss-pil.yaml  |  1 -
 arch/arm64/boot/dts/qcom/msm8996.dtsi              | 79 ++++++++++++++++++++++
 2 files changed, 79 insertions(+), 1 deletion(-)
---
base-commit: 13ee4a7161b6fd938aef6688ff43b163f6d83e37
change-id: 20240320-msm8996-remoteproc-fccbc2b54ea1

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


