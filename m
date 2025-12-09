Return-Path: <devicetree+bounces-245324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A6925CAF2A4
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 08:39:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AE3AD3026AC4
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 07:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41A982750ED;
	Tue,  9 Dec 2025 07:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aOOfXS8b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBBD22256F
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 07:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765265887; cv=none; b=bd0FWdjYwss/5Bt/hr7gWWnV/mCCJJ4llr/OnQHOnObFyWn4C1bNzgocjM7ySgsPCwM0ydrynqHtESZqD/R3POl4LHxaPV7LchG3loDBCJ6NiNEvOXnY+dUZPKcx15MVJc7l483LXw1wtgjC4X2IrAaqldUpWkWQwXw2EUKPvIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765265887; c=relaxed/simple;
	bh=i6iv+/k0H1iHwTWNk9MPDK0nyfs+zIxL+xqyM7LBUn8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AGRn2FdqxjfB4JitnZVOw6SRDv4aF6JnsSQnsC0KXSfEBjmXlmJ8KJs7mjNXaGCWXoGlB2SsYMFoldd0YjT12U0vq/MSspoYMYFlDTHWQ7OBCI3Fqdtkka/JazOmzdJWNZtGMkyX6F8heUpRK2R1+CihnZ/grp+E7rdORNSbV0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aOOfXS8b; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-47796a837c7so46453255e9.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 23:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765265884; x=1765870684; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ubM7DtKQolV20PWUE0DzMy/AZ4ddJZu9bZoMzxGZj9M=;
        b=aOOfXS8bTdMabOfY9LD/VIyKx0mfhXAFlYXZ8ExVGm0ahNYhyLn5Xs8SIfMG3olH5j
         eTu7rj+AiEOc5cYB7Sv4xe/OlnMouUw86oFbIyHzWy3FzYY1nu5Rin0tvFr0Y+2KkZRg
         hfSDyMqW3y44M0vgBXtBMRnwcZiNmWGhW2OH23/0u8WoHHeDtXNDT9kTvNRZqu8/GEn9
         3Ujsqx7PvtPoR1qmwfe/2CcDOt5G+DTRglmMoLHBRNY6dwCvcCmG2Co5AtMnKYN7d8q+
         41KkKlp9uIt1p/PoEh+R8PM7VjEKhEi6jfzpSh1RUppnFd+l+Es3FjPAPocnkmTV28Dh
         Gfdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765265884; x=1765870684;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ubM7DtKQolV20PWUE0DzMy/AZ4ddJZu9bZoMzxGZj9M=;
        b=c5Mj7AsFJzJ/oCEHG9axCx4euBChnhTRwnnuBm/EmtcS9O8Mw9ng0rKYbYfSUQ2jp3
         N8GUrsUqsFAvvDtV3p59xbf+GEBrVj5gyGcXWAxWrqB8vbX20vsSiAnYR3V0TtRH8F3y
         yx7QqB+T2uAQN+Y5dTiTWZJrvquH55gn/arPCtjxMvJb3TK6am9LwcUEo/ZbgV1L4AkG
         k2ycM9cistUR5cNfaKnBbxjK4/AArTsOSEbJRX7PXj5hhX6LFWK9ITtpFdhygJekWtWy
         yYt63oWelE4VGlRYsvzGQ9sYRPd+fxjdqykMBRU0PQ/pGS63zQ6Upw2lKC/OR78xwuyp
         qKjg==
X-Forwarded-Encrypted: i=1; AJvYcCXWGpDUFp0qN1SQGwzLmwJhgkK2eOu+SVTi5Tp0LHG40/3zeYk9CAS1Pp3s0vPnKaWs/ttyhp3yDQbZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyztMyVs7b11tZzPqyLQmoXeEYBznSzOqPHyGzC9XamdvLw2P6A
	IA6XNhQUXbzQ/fAE0d2LY22GJArqKmbMi6ih+FhSCKqXL/OyFoGggpvfN30iAdA6TEvslE8e77w
	Z2k5Z
X-Gm-Gg: ASbGncucIEWNjScHj9o83ZWp6DAfJZZ/KoL34j+WKsETH2sE2+6/XnDwwn8X7x7TmKx
	I4/ZXqET/VAZLQYclODzhISJJe9fVHihr76ML37TfZbndhKITZAo/KgbtEYhqB0oSL99zhW1y4K
	pt8ayfCQIfuolmpD9zeXo7XNH6/TJQ+cdZWbn6rYdTKG1KEs1IZ/I0xjVNSKsj/QUSzapi5M1KH
	toQ8KvMz2O1dax6/BmOtKaMlqXIGD0r6S3uo9RH+Fh9FF0PvqSXzIVpi8QckOKp6goJhPLGCB9/
	KziPkCr9yrRfwx1K+taIDCbrsZqjqGy91GmY+gjzStDC7vhiJ/e37ZSnpWiYP2JLSvDPEOPfVcj
	b+GWz5KIqe3IRFt02ajIEZ/OCN3QYXN3rPQzRlFjcdIx5b1EY39nCRejUTTOC8uP6dDrx16UkH4
	zECLcQFEfYNls9nF8n1slI6OvU/wta
X-Google-Smtp-Source: AGHT+IH/1II9kYkFThs5pXMsaZ3wk9yNURgnyMlce9bcqgHgMJE5smvCc5VwZHN4nSiZHjzpm9BASg==
X-Received: by 2002:a05:600c:674a:b0:477:a3f9:fda5 with SMTP id 5b1f17b1804b1-47939df79c8mr96341395e9.9.1765265883729;
        Mon, 08 Dec 2025 23:38:03 -0800 (PST)
Received: from orion.home ([2a02:c7c:5e34:8000:c69d:7dc4:d0c1:9de5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d707702sm27851935e9.9.2025.12.08.23.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 23:38:03 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Subject: [RFT PATCH v3 0/2] Adsp fastrpc support for sm8750
Date: Tue, 09 Dec 2025 07:37:58 +0000
Message-Id: <20251209-sm8750-fastrpc-adsp-v3-0-ccfff49a8af9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANbRN2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyjHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIwNL3eJcC3NTA920xOKSooJk3cSU4gJdUyNDy9Q0yzTjxJQ0JaDOgqL
 UtMwKsKnRSkFuIUqxtbUAoB/br2oAAAA=
X-Change-ID: 20251209-sm8750-fastrpc-adsp-5219ef9f3adf
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>, 
 Ekansh Gupta <quic_ekangupt@quicinc.com>, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Please test these changes therefore RFT tag. The fastrpc testing
application under linux doesn't work for me but I was told there
is a setup available somewhere in Qualcomm where this can be tested
(perhaps android?).

Changes from prev version:
- split patches into two: one adds mem node, second one
  adds fasrpc nodes.
- updated commit description.

Previous version:
https://lore.kernel.org/linux-arm-msm/20250805162041.47412-1-alexey.klimov@linaro.org/

Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
Alexey Klimov (2):
      arm64: dts: qcom: sm8750: add memory node for adsp fastrpc
      arm64: dts: qcom: sm8750: add ADSP fastrpc-compute-cb nodes

 arch/arm64/boot/dts/qcom/sm8750.dtsi | 69 ++++++++++++++++++++++++++++++++++++
 1 file changed, 69 insertions(+)
---
base-commit: c75caf76ed86bbc15a72808f48f8df1608a0886c
change-id: 20251209-sm8750-fastrpc-adsp-5219ef9f3adf

Best regards,
-- 
Alexey Klimov <alexey.klimov@linaro.org>


