Return-Path: <devicetree+bounces-245325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CADCAF2B3
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 08:39:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF1803040671
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 07:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 364A629BD8E;
	Tue,  9 Dec 2025 07:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qEQLlYmZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BD423D7CE
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 07:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765265888; cv=none; b=Su3VqIlF3oS7elk8Ht3CxX96qJsYa+RUX+UYgl9hu1brjiZ9LgqX9epDJOENh4+IqOkLRBY1gRdkyHrZ7XitejO7sEZvHMpAc3VYeXDvV6lZbA1v9APq6vJed/SdNi45XKRFS2vYXVcCf/5yZegQr+gNYw/yXLsrnTJbq0xWNGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765265888; c=relaxed/simple;
	bh=aZzBbWkld4G2cT4dltZARZRs1vIaQGWRScmLFMldpQM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s/mCjN4LNvmAR7EkINE3adONh8GW51Ekh1IG3TPLV7z1p/BCotOMsdMvkEse6adqeANP/74AckFTvxGnq5Ye5NjMyDXNl/bquHC3WSbh/XWpIWcoMrPhmsTu2miAxH56aoJwLtdhuMbzx5v3MMJarMZygm7fCRMKZuS4e4g4Mb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qEQLlYmZ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47795f6f5c0so33842335e9.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 23:38:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765265885; x=1765870685; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wBlOKsMyKLKMjIBkChI+DfAAnAfcEW4aowa7RJXWT8o=;
        b=qEQLlYmZV7Fh7OUyX0QzaRqy3lRZ+rvid2K7lzrzcH6vljp05L8N1Vj6qBXSm+bfYk
         DUutQhhh3EmPUZ/8U4ujXhkpJw4i2VAMcVEqNVCPLhAI1xJY6SqfZyV3IYRYEZ9AUplk
         lQSZ/s6LG5b8PteUBU29Onal41SYSeLqewCOnlJSvV/k6gaYrTNGpbc6ZfxnW4KyCx7b
         ph+O4kZ7PBCPzCGllg7ALG46EgaixyVG3Yq/uB3VCCesAJN6F1nZ4nRFALp4H2uCW5kW
         KehxHoS812bFHTcFaO/P8m7pkYMuHZ1tzRkkkEvpIL0gUfk3TmE06I4AW3/fQPop2g7l
         wAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765265885; x=1765870685;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wBlOKsMyKLKMjIBkChI+DfAAnAfcEW4aowa7RJXWT8o=;
        b=IpdB+fj06WHyrQpo5z8kxqoQD+DfOfBiCRsk5abWUyjrHQP8rXy0gzEmaiKs5ZUQEi
         hCDtkVs/26NXlo4J8Edn3IEdHBWGyIhTS2UBTo3IeDZu2fA5DSTUAhsjQ/6TSGvBeCSx
         g0yrRPOS96Tt/xZCkQuZM5digHs0j3VHB59OB+lv9c6TexPnsx9Y1St0dzfwZxXvSC/O
         7VWJQjcfzRGl0UEhm2wDkJOD0HvIuYocVFs6rb6Km6awdjPMgubGpkNzXTBiDvBPPSYl
         EcjVTXA4oD4CdeqDnDQzOS5ULlfReUHMPMmVZa5oGNq6jhsg4Cl/8Jp39yPPiz58+GiQ
         pnmg==
X-Forwarded-Encrypted: i=1; AJvYcCXfdxScYUck08U6Va5jEEKbjqcGwfyQyIn8Hxd4E8sPG3DbNao1E7caC+kqi4W+XBq8htp0/qzB1n9B@vger.kernel.org
X-Gm-Message-State: AOJu0YyjbBfY5ygyOLii9VmK8WB5FycAvtEvXn3RnfMzcPn8PeM0/Fef
	4D48wjZ6mpWXEFK7+ldb9utbuOzCzmSm5V7CnT/3vUnc6Ocjm9vL54wH/LwcpS89/gE=
X-Gm-Gg: ASbGnctoD9QMxgES3TNC5VPX4VPM995wjqxPnw8fgRUN73H5nCjkHdxooQDdvXc/Ska
	IMv4sOy7N/r4L4FJTYXhsOgvCFxA92aHk6m4HCZahn6rMEj3x6WQPxRpkiKTQ1+ct2Q7nFOb0Xd
	3np744BjCbPkGtliAFaEbBpa/qduwZFk1fWRyrn1vNMuE/g0bIQKdRD145fwyl266Z8mptVD9kT
	W6kqxBBzZ+/ijOiQYOsfQ56gcZdZ4ak8At/wUeJpglzAdLj0FwBi8ueOINrEkQ5Cu+zdPVe2wm2
	gMEYHrCBmRWSdU5uc1oQF5Od4/YbH48HtDzhHKOfN7Zxtn/gVuAtruEUkBKV8u3FHz9NnoL7Zec
	fwXGBE1NUPwdhn4AMGUX2HaTltQV8+9e7ORnvestEmUqCF7KruOWoeMpQiWFSh53pjOSkJN2FrV
	Nh5ZKJNL5LAqaaTmDtqw==
X-Google-Smtp-Source: AGHT+IG2QP0iyZKZ/0D1Z+8J8YOFjmR/oXW6oNXJTuzHgJkdpJDmf2fOHcXW6cTSxI/lnpV/lRZPhw==
X-Received: by 2002:a05:600c:8b68:b0:479:2f95:5179 with SMTP id 5b1f17b1804b1-47939dff070mr110602915e9.15.1765265884662;
        Mon, 08 Dec 2025 23:38:04 -0800 (PST)
Received: from orion.home ([2a02:c7c:5e34:8000:c69d:7dc4:d0c1:9de5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a7d707702sm27851935e9.9.2025.12.08.23.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 23:38:04 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
Date: Tue, 09 Dec 2025 07:37:59 +0000
Subject: [PATCH RFT v3 1/2] arm64: dts: qcom: sm8750: add memory node for
 adsp fastrpc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251209-sm8750-fastrpc-adsp-v3-1-ccfff49a8af9@linaro.org>
References: <20251209-sm8750-fastrpc-adsp-v3-0-ccfff49a8af9@linaro.org>
In-Reply-To: <20251209-sm8750-fastrpc-adsp-v3-0-ccfff49a8af9@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Srinivas Kandagatla <srini@kernel.org>, 
 Ekansh Gupta <quic_ekangupt@quicinc.com>, 
 Alexey Klimov <alexey.klimov@linaro.org>
X-Mailer: b4 0.14.2

Add optional memory heap node that can be used for ADSP fastrpc.

Cc: Ekansh Gupta <quic_ekangupt@quicinc.com>
Cc: Srinivas Kandagatla <srini@kernel.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3f0b57f428bbb388521c27d9ae96bbef3d62b2e2..be89c65163bf0480100c09c883b68d03455c1870 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -524,6 +524,14 @@ llcc_lpi_mem: llcc-lpi@ff800000 {
 			reg = <0x0 0xff800000 0x0 0x800000>;
 			no-map;
 		};
+
+		adsp_rpc_remote_heap_mem: adsp-rpc-remote-heap {
+			compatible = "shared-dma-pool";
+			alloc-ranges = <0x0 0x00000000 0x0 0xffffffff>;
+			alignment = <0x0 0x400000>;
+			size = <0x0 0xc00000>;
+			reusable;
+		};
 	};
 
 	smp2p-adsp {

-- 
2.47.3


