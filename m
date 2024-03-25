Return-Path: <devicetree+bounces-52863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D60E388B0A9
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 20:59:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6C05BC6542
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13589142E96;
	Mon, 25 Mar 2024 11:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PVr0lNne"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3A4915AADE
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711362807; cv=none; b=Lz3klUonmmURX8OEbifuJ3hFFPLEoo8iKP1otbm+oM7AZ30lo2+1kN2pPziDTF33WpRvdSWIvuI7V7OKngbsept5BkcO95aw35n2WgT8vJXxEtCmRBBFiZpK4Po3MOUFKQTCapiGZ4UBrPncBRwgvthEOkIzI98qa/P+WbPaB2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711362807; c=relaxed/simple;
	bh=veY2UbQB8Op7JAcmMcgKbzf2VaEh1Cc+Wkmsk2z3A1o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=YSO4SCkUeh21EIyU118zdkWXiRDgAZAr5fjBPEiZpEl9c05jROmEgT50BuD/UUiKaWBgsYJZvSiyIkvcwplzNaI08moOvuQW55rNa7qrwdfhREklZLUzjXiqpYeVv+TC1h/8q15gV5gb33fqSCbpuFKE4lvy4MIjI1QYhyE0t3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PVr0lNne; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-513d599dbabso5415010e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711362804; x=1711967604; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IlSF/XzYfABBPkSuT+dcOfufwQU4xv4Qhn96JVhkpvs=;
        b=PVr0lNneAPzI6Yn6+yI9KLa4fVb+M1Ih7YLzYxhNqnX+zB8fGqWbSBkX7YiL93emQw
         /MzSqdw5Zmw7L+wq8ywQOiKzdu76qpOrQrLtkdISoQiLyk4/cy5SzbP2JchufYz81rLF
         q4M68foEgVjQj8wjdv5v+4Pws/oVdn++/zNyytVbHfY/z0mss2MdrQs4nEdSm2mbJ6jg
         +rlrJSt++qCeF2k/UousaBo0/6J89j3P6C99ttDdNh0zD0+KUDolR1USkCPdujn7yfBY
         Zp+CWk2zYKv25yU59rLVDUDeKx/0nauKoMSNw7V7pyHZFIvlSYXXM8nw5oYqtDwLh5BA
         +y9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711362804; x=1711967604;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IlSF/XzYfABBPkSuT+dcOfufwQU4xv4Qhn96JVhkpvs=;
        b=J217jVsIeQUgWZr07NlrmzJyRVC2JQ3YCowM6W2/PfI8kAj1hN8i7CMyO3wZO5OV5g
         fkzz1Zsu5OzuiqGMR6NLlG0UqJZh2dajDPkF3p+0QdMT68EPRR7ATHEWn34Rl0C9LlB8
         r4MV0WjhTE7+eXny5T5CNSb+xHrD3kdS/VTWWMule3vo/gb55D3b0yvVaTm5MVGcm126
         aYAVz1OFLclmk2WstHxTdCM7Qq6+ul9h9u48BVuSl9u6TZfcKZSHdR94SgeR16Mxwpt5
         vfh63MwD9kXkCq+66sBfCAx9MYU3c+larL4VIg8ysW8F0s+KNgtzsEt48LSfQmwHhzuh
         YMUA==
X-Forwarded-Encrypted: i=1; AJvYcCWmL0DPw7RyIBx1PB/SULIIMMusMFoLzKsP9yNcUgmm7QOj1ZJKCRfD+nsm7r8NKAjE56KOvDDnj99ctDJrvHOtW+gvu6LTpiNbmA==
X-Gm-Message-State: AOJu0YzDOPIZfpZ8gfhux+xSOY21WTknHkPZt/UWcpmISOuKaqnDw1ms
	3jZnqvj7I2M9sLIIpEoscMLdS/YaMm81DPSJLvJd39ZnmjYn+omGtZB5hIC1csQ=
X-Google-Smtp-Source: AGHT+IE5PQzQdX9H1hgeYc8OivCnUMTMVa7putOS9zMdbQ3op2eD2+msOoq0IZkoh8Nh+wl5dBNx7g==
X-Received: by 2002:a19:f615:0:b0:513:aa0d:d3cc with SMTP id x21-20020a19f615000000b00513aa0dd3ccmr4818948lfe.34.1711362804207;
        Mon, 25 Mar 2024 03:33:24 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id g17-20020a056402091100b0056c0cec810bsm1166030edz.85.2024.03.25.03.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:33:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [RESEND PATCH] dt-bindings: display: sony,td4353-jdi: allow width-mm and height-mm
Date: Mon, 25 Mar 2024 11:32:27 +0100
Message-Id: <20240325103227.27474-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Allow width and height properties from panel-common.yaml, already used
on some boards:

  sdm845-sony-xperia-tama-apollo.dtb: panel@0: 'height-mm', 'width-mm' do not match any of the regexes: 'pinctrl-[0-9]+'

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Rob, could you pick up this one? Was on the list for almost a year.


 .../devicetree/bindings/display/panel/sony,td4353-jdi.yaml      | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml b/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml
index b6b885b4c22d..07bce556ad40 100644
--- a/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sony,td4353-jdi.yaml
@@ -23,6 +23,8 @@ properties:
   reg: true
 
   backlight: true
+  width-mm: true
+  height-mm: true
 
   vddio-supply:
     description: VDDIO 1.8V supply
-- 
2.34.1


