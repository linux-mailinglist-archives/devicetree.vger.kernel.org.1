Return-Path: <devicetree+bounces-246158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4645DCB9304
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 16:50:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 688A430321C1
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 15:50:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 839142BE029;
	Fri, 12 Dec 2025 15:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lrzv641n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC92258ED5
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765554637; cv=none; b=o+oVqz7175XS3R3DMVV14gshvPEnBBDLy7uIgW2Vsi8UBNcMkcreGsjTXustqb4TOtqyIplpfT+Vq/HcJnr8xSEiwta/45Jrw9YbXIAOGecg5UguFVtdkmMcj5p9HFWOFKbuz9B4H87pJtN+KCGhiNlLdYQ8XKlwuv2hZd19Xlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765554637; c=relaxed/simple;
	bh=xidLXrNa10nnExBVsh244pTe4JLAL7pUNNuqAQh1B+s=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=aGpWg8yZlt/x1iSbdWEPQpJLba6+3XP93VoZhWLA6IjrMISUkm0McQtHWhilrBArI8SQUI3ZViPU++2zfN5SEztpkheJYWNHqTOu6o/HR6/F0RqlS2OLPeW2/LfOUF3G9hptsMwzmaEk3Zc/WiVjCOOF5EgiilJxGVtFQ3o432I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lrzv641n; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4775ae5684fso6717815e9.1
        for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 07:50:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765554633; x=1766159433; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2cnX0JUa95FLcaYhHWNtkfg7XDY9jpTe5UGPxP4s3pY=;
        b=Lrzv641ntsVsANySf4CGLJ+nq/wOMZVcpWp/Hx3TfA7oQ/flPsEZ4ccvHXOt9c5QLz
         BsY9DGLYGK8aiAZlSnvL08ToRj+ZB0/663kgEbXh0BQ6wNd6iJRwpXcOZqgOx7Ck7DKl
         rEx2LSNwG8u8Yo7fRU7FccwnU4goEBiZ3an0SVGnFq0dhs5CRhH5geqQrK6dExJtgLBT
         WgQLfOmLIORZTp4iw45DWbBoDTUZKS8VLmLZY9OsycVcJTfhDc5brKuyhA+GLs9Jmg+t
         8lc1mfC8tb7322G56gsBA7EhLDWsbFUbnVaY1pEiBHIRIiylQffiGTHrn/HU2S+qbvyL
         oJtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765554633; x=1766159433;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2cnX0JUa95FLcaYhHWNtkfg7XDY9jpTe5UGPxP4s3pY=;
        b=Gss3arTyUMFDVGr0Ob/txOW7P8+K+jZPvoUUQ558jAhjSaHCRK0BR4y3uFOm4cSZLG
         ISmC5ptHCOElftoE/90xBrscIyZs4J95Pte1JbLsvJfEFX2Wip1Tx1Lm5U5nYzLk6N9e
         8N2NLJW1xh/SZ13GWAq4kc6KwXNUav5Lj/YCTk4azsjjPOtVaMRhoEacjTQ+F+7VDp5W
         x+DWA00bHJpEN9ICMswlsRi72NIEzmnJznt043SqmlcTu9A/APhdFnBytp7PPkc/i7J0
         po4vTuCjURGZFA09iC9thdo4GfxwWdYJrhP/i+2Vlh+O+vyc0WIaIda0PekIO/XrrPPS
         QMNg==
X-Forwarded-Encrypted: i=1; AJvYcCUQpbn5ujKJanzdM3a1zkAQ2GNwL3DmHEBAss/uG+QQovSLZG8at4I4YC0UacNKn6bESQZbj+rrnEWa@vger.kernel.org
X-Gm-Message-State: AOJu0YycYWfivCIiGtRafK1NQdDocAe3lBEJrANZkgvxChWX3MJ+VkSr
	OiA3SUZp4D0blIg5TxXN1E7yCOF7QJgCyUBIERdgpc93s6j9MpB/QMhlQyjeppxmwCE=
X-Gm-Gg: AY/fxX5+B+ylG7cqqOz0NXvv41DKXLpxDb17gCTg65yfbv59to9X4tw+/hWupwfCR9J
	p3gC3SIOTftTYG1bXnG0Wdv+LvKPogKK59iBSKUDvg0obfnU6IaCxZul/FUchV/QXZpeMKOpCub
	mDxchGQAIjp82KJ/PIdaVwJtCIjAkCu+J9ktil9/isvSaBSDzYuahL3h6N2k0TUCphUcziXueMj
	ZIB7d0SK2kJHHLeFBX5/vprmJwTzzwk8MgzcokKEzqgs0LbRryjOMro1E0mnIzxZRK8aHHrBM7v
	lEOHEiQwVIBC3Fj0dOJmmeEcsm0IjGyHmJhZnmtTNMFwkXtskKrewnPUqCrtTtC2purm/zrbdWf
	SnuiBau2QbiAwTTauItdNpQMRhoQbIGs+/9b4w/HT7cS2Z17lEsy25Zg3QnxOFHwbF4e5G4sAM/
	dWawh79+U4T/yG84mQ
X-Google-Smtp-Source: AGHT+IGUrxu+irDcADrK5/MU4ibUgqq1smXSNe2wq3NuGG1J4xPo6RgE6cmVyk8cYeI2BK0AXvmmWA==
X-Received: by 2002:a05:600c:83cd:b0:477:7af8:c8ad with SMTP id 5b1f17b1804b1-47a8f90eed3mr29356995e9.31.1765554633376;
        Fri, 12 Dec 2025 07:50:33 -0800 (PST)
Received: from localhost ([2a02:c7c:5e34:8000:2e63:1f69:14f0:7314])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47a8f8f3894sm37853785e9.15.2025.12.12.07.50.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Dec 2025 07:50:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 12 Dec 2025 15:50:32 +0000
Message-Id: <DEWCVSWNA1MN.10IT82HICKO8K@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Bjorn Andersson" <andersson@kernel.org>,
 "Konrad Dybcio" <konradybcio@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>
Subject: Re: [RFT PATCH v3 0/2] Adsp fastrpc support for sm8750
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Srinivas Kandagatla" <srini@kernel.org>, "Ekansh Gupta"
 <quic_ekangupt@quicinc.com>, <vkatoch@qti.qualcomm.com>,
 <ekansh.gupta@oss.qualcomm.com>, <chennak@qti.qualcomm.com>,
 <srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: aerc 0.20.0
References: <20251209-sm8750-fastrpc-adsp-v3-0-ccfff49a8af9@linaro.org>
In-Reply-To: <20251209-sm8750-fastrpc-adsp-v3-0-ccfff49a8af9@linaro.org>

(adding more Qcom folks to To: header, who asked to send this as soon
as possible)

On Tue Dec 9, 2025 at 7:37 AM GMT, Alexey Klimov wrote:
> Please test these changes therefore RFT tag. The fastrpc testing
> application under linux doesn't work for me but I was told there
> is a setup available somewhere in Qualcomm where this can be tested
> (perhaps android?).

I found time to compile and run the testing application. Currently it
seems to be untested under Linux (mainly strlcpy thingy and no manual
where files are expected to be found), there are also a lot of compilation
warnings.

https://github.com/qualcomm/fastrpc/tree/development/test

root@linaro-developer:~/github/fastrpc/test# fastrpc_test -d 0 -U 0 -t linu=
x -a v68
Test PASSED
Please look at the mini-dm logs or the adb logcat logs for DSP output
[PASS] libmultithreading.so


Allocate 4000 bytes from ION heap
Creating sequence of numbers from 0 to 999
Compute sum on domain 0

Call calculator_sum on the DSP
Sum =3D 499500

Call calculator_max on the DSP
Max value =3D 999
[PASS] libcalculator.so


Demonstrating FARF run-time logging

hap_example function PASSED
Please look at the mini-dm logs or the adb logcat logs for DSP output

Demonstrating HAP_mem.h APIs
Error Code 0x4e : returned from hap_example_mem_dmahandle(handle, fd, offse=
t, buffer_length)

hap_example function FAILED
Please look at the mini-dm logs or the adb logcat logs for DSP output
Error occurred with selector MEM (id: 1): 78

Demonstrating HAP_perf.h APIs

hap_example function PASSED
Please look at the mini-dm logs or the adb logcat logs for DSP output
[FAIL] libhap_example.so (error code: 0x4e)


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Test Summary:
  Total tests run:    3
  Passed:             2
  Failed:             1
  Skipped:            0
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

RESULT: 1 test(s) FAILED

But the result is the same for CDSP (was it tested prior merging?).
The same results are for v75.

Adsprpcd works with audio_pd though. Maybe Qualcomm can help with this?
I don't think I will have enough time to debug this and narrow it down,
also very soon I will lose access to the device.

Best regards,
Alexey



