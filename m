Return-Path: <devicetree+bounces-18680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 524EC7F7CC8
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 19:18:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D94FDB213FB
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 18:18:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31EA33A8C6;
	Fri, 24 Nov 2023 18:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fpvJBbKC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 903631BDA
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 10:17:22 -0800 (PST)
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-7afff3ea94dso71322339f.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 10:17:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700849842; x=1701454642; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLADupMmiOI/CuFkP9Hg2IYkHX7ypUPKgw9zZKAkI2A=;
        b=fpvJBbKCHlHCjgDxug3KzmpK54wUIavyxF/EenC9iU7ATUZI1Zd5FMaUNne1s+2GP5
         8SUuebjzGSeK66Mt6vbrGhWg1miFT84FjcCPzW16oO3bPhhZo7EQjycAePsUawRagCx4
         TMekY+kPnraeE0gxcA4m0rRVhLShUpfCLZDyN8kxXFqlq0P6A8FBW59eYIZvV9pgp+gL
         MtjwAItv+7iiC+5QfgsdQZSDq76llxohmD1LYH9E7hJGDq5kAWPAcku1MiSyutcwlsto
         RBS9xxcTIm5OsK/YoEZK8nHJkW8ZWhRWtlx1nHkp0i+lfymTdG/Or2TnTdTXmqkZq4uH
         kXRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700849842; x=1701454642;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZLADupMmiOI/CuFkP9Hg2IYkHX7ypUPKgw9zZKAkI2A=;
        b=mY6d/cSPnlxmvdVLNwS0pqJ3XIKN4OhKSBXXzomFMJC2qqafrq04nGmoItl4BWmHx3
         VlxkO4nQLF4S+MVG8FbVUMa5iHqJk+tZlSVsrlaDFj8J6wfraIxAiVB2zVzEfk68n2Tg
         Wxi+29Lrdji72LIj6kuWxnO+s+z4kvFKYhTlgmiIUGXpUQEMpT03kjnr2HJME3o1q7RS
         4czUgfIAyIlmkktPsCjGTAtASy8XMyNkjvUI/n4slksdOupY8w0bjBWZn6ipdorSzn+i
         l+5/cj38S5507Xp/vhREIceb1HTS9UCBplmqUhZ2s8A2i1qOKBE46gylaMuy4r95mKzK
         LA+A==
X-Gm-Message-State: AOJu0YzX/qWto7px6sM0hD8gqpnrC17DFt046d6PpJn8xfaXgQK11LcN
	JsnwwAX9Y2qW3u56OgBA6b/Mlg==
X-Google-Smtp-Source: AGHT+IE8paLRQ1z+VbJS//0j9s8uSZfLnbn4pb5jVt8VW26qZ7k45wdDaW9nQ3lb5QTLl6q1IH2Alw==
X-Received: by 2002:a05:6602:3351:b0:7b0:2027:efda with SMTP id c17-20020a056602335100b007b02027efdamr4350310ioz.5.1700849841819;
        Fri, 24 Nov 2023 10:17:21 -0800 (PST)
Received: from localhost.localdomain (c-98-61-227-136.hsd1.mn.comcast.net. [98.61.227.136])
        by smtp.gmail.com with ESMTPSA id et21-20020a0566382a1500b004665cf3e94dsm937031jab.2.2023.11.24.10.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 10:17:21 -0800 (PST)
From: Alex Elder <elder@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	agross@kernel.org
Cc: mka@chromium.org,
	quic_cpratapa@quicinc.com,
	quic_avuyyuru@quicinc.com,
	quic_jponduru@quicinc.com,
	quic_subashab@quicinc.com,
	elder@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: qcom: enable IPA on sm8550
Date: Fri, 24 Nov 2023 12:17:16 -0600
Message-Id: <20231124181718.915208-1-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the basic DTS information for supporting IPA on the Qualcomm
SM8550 SoC.  Enable IPA on the SM8550 QRD platform; GSI firmware is
loaded by the AP in this case.

					-Alex

Alex Elder (2):
  arm64: dts: qcom: sm8550: add IPA information
  arm64: dts: qcom: sm8550-qrd: enable IPA

 arch/arm64/boot/dts/qcom/sm8550-qrd.dts |  7 +++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 39 +++++++++++++++++++++++++
 2 files changed, 46 insertions(+)

-- 
2.34.1

