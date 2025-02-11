Return-Path: <devicetree+bounces-145252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C34AEA30C24
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 13:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD9203A705B
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 12:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBBA6216E1D;
	Tue, 11 Feb 2025 12:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wrqtQpaw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8392144AE
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 12:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739278606; cv=none; b=KFOTCVJQNRbVsFeku6rfnkZzCctgqFwdtgk5cgIfsQYaJaAFW8yitRhkSdafIO4gKzNWYx7K1ygkmCj2x1m7YxV5qR2UeOghFhkJ8BtYcwhm/Oq94OhQPH7PTNcezJ5fyA7pW314q7zVBlhZ5hNaS/CYDs6rJtUfeCAjQH6SMFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739278606; c=relaxed/simple;
	bh=l534KaQHeipF5HnCgvu/4eiMXBXhIzMa6xV85UpDLN8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U52l1Mx2/9dJFODJY92SUYgtpIPIK/gK9vUYDREhHOw4a5n7QkW071QGXhpTOZHz8HKXdikYQeNKlsFLzbJxPxbiSLrlaKltBE7stvwQ7Hl7lQTXWdyUgxa0HHQe+eaHqU6FKld7yXeX5NU6EBySeBoOnhKV3+W35DLNDP+S78E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wrqtQpaw; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-38de1a5f039so1582215f8f.2
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 04:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739278603; x=1739883403; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2QbcPrM7Nmj9mrvDTmLOeka9cuKDtzuzeQZCl6bz48=;
        b=wrqtQpaw9W+5V+yic2UWNcITME9hd7f9FtHXPXNb4h1QmniNsf0dbpGb4FfXDPiiwy
         /6ONFZ3kIr8L1EP7QtUc4YqV5lHTIWNatgwM5Sj6qnrJjdAqZg5tDR784whB3Cffiooa
         zn0x4f7mCrvqMORikWiCBfKL2Mn4g3pGZhHzoFtpzXz0PsnRnPJh1YOIwKmVSPSPNfP3
         2xh0WZa/nF4u4/rEo1rke1CnVPUjFdkpVMxgQWQWC0nO1fA03Tv2V1Amx2+4xwpDUq5h
         vYbH3UmtTmHYne7kgsm/C9M4f8SAhCg7xTyfVx8OfzL4sNGXOu2TZlzM6nnuJ6Uonp/Y
         H/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739278603; x=1739883403;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m2QbcPrM7Nmj9mrvDTmLOeka9cuKDtzuzeQZCl6bz48=;
        b=whBh/PVdZprPNfQISpJ2e5DShswgLaVX4mwiLtKKs1rVQJHoeGUXrkiXOwo0aI8JXD
         WJE2pVJdifoN6q8xxoShzIVuyfZbj5FqS3Pj1nOMIdHBXWIj2LmZg2wj/KGKZErCqXqz
         aOik392Wj5HhRA3vEv8GlzgGjoCe4myLftbsdkMkmeDo3Tb04xA8JJgZQNAKeURmizxS
         /2Wr7B5SBM28GCoxEEWTJcvSx+liC3jlHI5EBqX9QfHMAosxE5m1s2+BLYrPIobOEutW
         kSByy5m1acsXBXHk5cc7MG4ToVSYG/p18yuT1R5mX4TjOkrK+afUrpZergM5nzVJo5xp
         xXSg==
X-Forwarded-Encrypted: i=1; AJvYcCWgaY2/AVpC/TJ2kvrfPBkNWasoWIpYEU0e51qdEoQGXQ06/rxRAXvNiYbeWMoZ5SOtN2LBpVHkKchE@vger.kernel.org
X-Gm-Message-State: AOJu0YwwSSd1Uh7MsNT8Vs4TaU09Buft3rruwIP7QHJWymBu/kLwDW9T
	BmhfyKPrPfAi0CXRRqHeVWm6CizOUtCY/VziOUxk8YEf2BLUsC6Lt0Gd+0N+R9E=
X-Gm-Gg: ASbGncvsN1fNGg1Tdi8QpGDqZYlA2Mq2cTbaxfpZqx6tKCR/dEj0SBpwZJWLWTBK5eg
	Vs958zmXNAYJej9y08QufY2K2Ae3UxV5Ens1qJraq0+JSMYnrW3gnPfaifgVxsLgJgKjESto1Vo
	C+UNrL54HLeG4znNv5AaxFLKsN5h6J/hU4F6iUdPYR8HtCykq9vrYo78ne1aZr3FOxbvYC09iZz
	p99CBiW7+pNUqSnYCBJlPM0LhVvSHELbTmh8fHEIy5eRw4d/IgkyRLO+x7Vfuo5OMhPtwYgwvWP
	px8kKBLBT/6/RsU/k6baCPXY9E+NTcJk5mEk
X-Google-Smtp-Source: AGHT+IHD1QJbAHIFOi1zXgE+3bom7jzBt6ncrstR3I02jDJ8eFFbcBVdMba2lvkCnyM01hKAEwJf9A==
X-Received: by 2002:a5d:6d0d:0:b0:38d:c087:98d5 with SMTP id ffacd0b85a97d-38dc8da6713mr16029317f8f.8.1739278603311;
        Tue, 11 Feb 2025 04:56:43 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc73c2e00sm12863078f8f.57.2025.02.11.04.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Feb 2025 04:56:42 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 11 Feb 2025 13:56:37 +0100
Subject: [PATCH v2 1/3] arm64: dts: qcom: sm8650: add OSM L3 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250211-topic-sm8650-ddr-bw-scaling-v2-1-a0c950540e68@linaro.org>
References: <20250211-topic-sm8650-ddr-bw-scaling-v2-0-a0c950540e68@linaro.org>
In-Reply-To: <20250211-topic-sm8650-ddr-bw-scaling-v2-0-a0c950540e68@linaro.org>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=963;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=l534KaQHeipF5HnCgvu/4eiMXBXhIzMa6xV85UpDLN8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnq0kINvkPdj5dtWSiZ70NKDNYYOSYlXOvsSqM0zXd
 l7PHiO2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ6tJCAAKCRB33NvayMhJ0dS3D/
 9gts9JzFlQEOcgzU2aiWupKifV0nV85/hjzqNcgJZSBEPYKZ8SBa9pw8YiquPCflilhrRJOawsvxiw
 ZRzVvrzdeW/fwcDPkL3r081BfLSlgxpfBOznA0gjXvZHMe1vAeuyU/3mxp6PPCKtV3OxoKwRdQ3AWn
 JxvT9AMvh+KUNZY27qvtHEmYQvNnl9rWlEa8RDzrtA2qc3TNf2zTZVjwsVPg+Z0MvmUKeAUzjSFlYW
 rQr9eXx9kubCE1gq9tdOXAVDqRLo2ONiVbz9Ou0u6Mmu4mr9heCsJEo9HaT6huF4O87dKGVkVX+kc0
 Nzqp7gfIfQv/qS/Sjv0RvANP+y/SnV0Bc1TF1AXpDnRZK0FDDehYBD4GDqEIc1cAISYFNeUICc+Vya
 I9swqEimSh5wyyFjsjo+vn++LpE8TPND6VAOME2DKYOkqgMMI42UGMiPKAhqqx0Z5Of4NiTOIUifi8
 Kg7SjlPfz4Hnsp+nTotz2vtgKjUqVPVE7BbZKeM88TG6yPp0Y/yFnVCElAosatq1yQFacwUOukiZyP
 20XqpXWnrCFU3MsaVCwFWGKZeDeyi2beqAn60kL4xww3bdjrQPf64Ux1IzlcXpP5TFvrSvreICxc6c
 /KizIOVheS1oEEYrMW+83iX9nivKlHmsldm43sdt9ljb5d+TNIZdCOblAHbw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the OSC L3 Cache controller node.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..bc09e879c1440873a52daf3fc7a38f451f1f972c 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -5506,6 +5506,16 @@ rpmhpd_opp_turbo_l1: opp-416 {
 			};
 		};
 
+		epss_l3: interconnect@17d90000 {
+			compatible = "qcom,sm8650-epss-l3", "qcom,epss-l3";
+			reg = <0 0x17d90000 0 0x1000>;
+
+			clocks = <&bi_tcxo_div2>, <&gcc GCC_GPLL0>;
+			clock-names = "xo", "alternate";
+
+			#interconnect-cells = <1>;
+		};
+
 		cpufreq_hw: cpufreq@17d91000 {
 			compatible = "qcom,sm8650-cpufreq-epss", "qcom,cpufreq-epss";
 			reg = <0 0x17d91000 0 0x1000>,

-- 
2.34.1


