Return-Path: <devicetree+bounces-52906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B7588ABDB
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:35:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 72769CC4F94
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFB2137C49;
	Mon, 25 Mar 2024 12:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ptw+cSp8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB8C137C3D
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 12:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711370035; cv=none; b=R6F8amKpYqwZvQelx5kQRSQLsgiGA2649NT5zAoYg3phbsowxvgXQh/iCGPQpQWmSG283o5lE801IorTRy7r78/uzY2vujvgUz3HXK6Uzq9yIgOyO8Ml98KSyDaNQP6wcG2iEyPxphRlvR7Mo0S4cQ3KqGU3nfPqJPzdCsgzWgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711370035; c=relaxed/simple;
	bh=8XH8nxJLnPo+YQCJAUt/XEsHMfIxxc8lnvIZwof12eE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=a09Ik8sTbguzTRTrcEEErktOkIsAANL+5W5llhk7oJoq86rpxx8x3/haQNM4HppRjJ6OMIiyDlJn4pzyxPEVuMAJmrjM6plu1zBboA6jXsHvCpJZMKG70BGTTQ4ZD2D83otkm6rCkicSwtk1GAUNNJ8/WSjj5UtOTzPwGT+Jq/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ptw+cSp8; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56bf60ddc71so983700a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 05:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711370033; x=1711974833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=V3PCUiyBuZLfPV7zIlBkdJtg7fUHL9g4H5rU0EDwif8=;
        b=Ptw+cSp8lLVje5hu9vLQJ78s+87I5C1bbLvCoPjncAvX9sCagonpZIHpnAuFbn9BNI
         QTxLSlxfUcFy043yWDBBGYpBktb4p+v00HMVbKSdu5Cb3mzJGFoGOuIReqnZhnY/sjJ4
         KUDVBDa2pCD3+T668qyRmd8UDnuHV4ewh2SZ2BKChwHJwWg1k4Fi7rM3dO8xKhAhgHFt
         TB09EK+C9wRpwVHQGcveOgvB2jLMusOhkHddNbGrzc+TVhH9Mknxjp1VD+xn5scAjN5k
         KTltvFoI8TkNkxAOQa3dCeFToSf+BIPsWDER/BqeNQOwdOKHLYcce78Di/TGRf4ENFJw
         EHSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711370033; x=1711974833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V3PCUiyBuZLfPV7zIlBkdJtg7fUHL9g4H5rU0EDwif8=;
        b=v+VjzyjEBUDXbVVxfTrJvo4L0cWNfDCWz4tb6JqGRzFo1W3+gBEGcLhl9o2poPHo7d
         OqWt0u3B5fVvDgQ3BC9q0OKgRDcu/xxmEoivYSHV93E1d8NM1uC27RSkL4ZeTJINMxvm
         Z1QKgznts1veR9at4h9CHVliE5F1E4yZjsfCi3UuhwGjImA6TXN5tiQqLjYQ37sVwBpY
         mHjZA3BJY3wdojzHhgNt+jNkkqaNwgnaOHaF9oEoGQu0N3qQQ3wf97rLD4XeWjuVtbxl
         rTgvJ817ZK8EltCNnwzkYhMYrzMrTw0158KBE6oE/UUpVrQWTaGgNYGWEJ9W0WsmShUI
         LF1w==
X-Forwarded-Encrypted: i=1; AJvYcCVMqSnqqvDNkQO+6keV0jPbuDy2GfvPpPFR8fWp0t9iw84NHtWkmiU/FyQgtcw9zyt3bBGfRfdvpVx+GmTM+hDdCqVYX3Tk/+seCw==
X-Gm-Message-State: AOJu0YylfeTwPZfa4Fh0H/6RDgbJQR2oSeoQBDPgGwPtu2LNys4j0dzn
	kYBwf0KAOHN2THLGvSFCbRrB9syNiy/kpNX9iwEgDFl+B3DNSG5kEE3b9Tp/tw4=
X-Google-Smtp-Source: AGHT+IF2Ow5oukko99ZgsudixUcMXlR4nqh1YwcZgUBIlbGX5zzT2VZJqdpV7V+Hw46tuUG70xzqoQ==
X-Received: by 2002:a50:d7d1:0:b0:568:d7fe:a768 with SMTP id m17-20020a50d7d1000000b00568d7fea768mr5889820edj.25.1711370032737;
        Mon, 25 Mar 2024 05:33:52 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id es9-20020a056402380900b00568d60cfbccsm2933383edb.42.2024.03.25.05.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 05:33:52 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] arm64: dts: qcom: x1e80100: correct SWR1 pack mode
Date: Mon, 25 Mar 2024 13:33:47 +0100
Message-Id: <20240325123348.45249-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the SWR1 Soundwire controller port block pack mode to match
reference code.  Not sure if this has any impact.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. None, just Rb tag.
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index c6b025503f4f..be4d2674151a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3430,7 +3430,7 @@ swr1: soundwire@6ad0000 {
 			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0x00 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
 			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0x0f 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
 			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
-			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0xff 0x01 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
 			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
 			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00 0xff 0xff 0xff 0xff 0xff 0xff 0xff>;
 
-- 
2.34.1


