Return-Path: <devicetree+bounces-35789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D5F283ECF9
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 12:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D834D284AAD
	for <lists+devicetree@lfdr.de>; Sat, 27 Jan 2024 11:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84064200C7;
	Sat, 27 Jan 2024 11:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gaqxik0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C751F1DA3A
	for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 11:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706356307; cv=none; b=Aea+4lSq/+ki1SwtODZamFvOPut508ln3qJNUQDoHMA1uqrKH1j3izSUq+d1SQlChBX73NV1hLt7J7rwfL0QqBoxJY3B7YDHkam9fa2kjbJidLpZj+zPIsTUJpWfB4nGNjn3a22XLCwM4d7/GJp+OpMrNnKuTRKFP+7y+cgBwrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706356307; c=relaxed/simple;
	bh=s7sbFD5rK68sTinN2sHMpOlyPBNLIyDeSR6rna9Gosk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WAv/OxQqzYUCJQ3gzotow+y1LNf2uuSuFWSXm+JCHvKheGuWF9xhZImY5KYF3ecBO8ohW+wC9RmtNLHBKCJvfVD0eOPyqeYxBJsxUq/c83DYUiQ2g+SAiXzOy8H+hbLL+oaCntnNYA7JMCK/TqcAW6s7p4m2CMzmO5ppfBGWXls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gaqxik0r; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40e913e3f03so19311785e9.3
        for <devicetree@vger.kernel.org>; Sat, 27 Jan 2024 03:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706356304; x=1706961104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7CPKaI879w3EsoHAHrSNs9w8/YFZ73Teg43RHZbluc=;
        b=gaqxik0r7Ve/pAM9C4KFP2wRwQFvXVFfcERWRDsIshiq/RMWVKXHLmbfhn2upMqVUF
         dUsEQ4pZYB1iG0Zq8qbTzahOPEzzxziUNjD0T/4S0/UNoEyYE3r7xJy+MRACy0OtFp0I
         PYnFrLAxV/QhjEo5689ZzJmfbB8QdAqw2MMJn+kscO6VgHwedx9ezAvM0oeE6jPZo28y
         /YYLe9UR5NX2YyLEy80jqT0IJRomN1V/JmkNhpQeVvrWziaWXARfJvdtBmiDiRVTvBW5
         20ep1DqCm6IM9F1kEP6WdGAqgCXEBKBKvViiSd/6AUXLBGoyL3rmua9R+sSGjhNmrruX
         3O5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706356304; x=1706961104;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t7CPKaI879w3EsoHAHrSNs9w8/YFZ73Teg43RHZbluc=;
        b=fO6BzMXKe6+0s3uKSaCNdEchdZH4/A4qd02mCO4j9aOOUuzzbxzuzbO1uFTz4OiwA4
         ZJj83M3MziaTTBgwyQAj7f77q1iADKGaobq6G8uzES7pmsh/iWRht3rviHfXuGbU9jba
         Ymybdu8AaL3BffmVcO5ReOWfd5RSoqKKWWaZO5InC7VLrZZ+d8ygfFXl1PXSI+pmWfKT
         PYvpQGRIJwXXiEuRfc5pOpsJRYagFnv4jsmmIxSZgSziZg/JyMfnPxIGiavT748n+VTY
         8Cj5nRIFezepjV8TFEu3ptVhH1Rqiurz/FdjAhjJvd+RQLNHdvEK1Lbk7wDdHiozlX+C
         ApGQ==
X-Gm-Message-State: AOJu0Ywv+puvKeMirxCchAsEY72oyoSwjxf0Hx4D6rXS/A/E8usU+O8X
	7yAKnbt5RksBhO6NwuARpgSrlK/st41far20fbE1wKtpQz3AOZeNt55Pz5Mm+Nk=
X-Google-Smtp-Source: AGHT+IFzjyK4rw6VpR9KhpvPkJZXlDlVtk6r4JDfcEtmA1SSjPihQXOdh7a1z/38+yU92cgQZk+k8Q==
X-Received: by 2002:a5d:4c87:0:b0:337:c642:7acf with SMTP id z7-20020a5d4c87000000b00337c6427acfmr817854wrs.108.1706356304031;
        Sat, 27 Jan 2024 03:51:44 -0800 (PST)
Received: from [172.20.10.4] (82-132-215-85.dab.02.net. [82.132.215.85])
        by smtp.gmail.com with ESMTPSA id ba15-20020a0560001c0f00b0033ae54cdd97sm765295wrb.100.2024.01.27.03.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jan 2024 03:51:43 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Michael Walle <michael@walle.cc>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
In-Reply-To: <20240109213739.558287-1-krzysztof.kozlowski@linaro.org>
References: <20240109213739.558287-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: nvmem: add common definition of
 nvmem-cell-cells
Message-Id: <170635630286.41579.13272488705212256827.b4-ty@linaro.org>
Date: Sat, 27 Jan 2024 11:51:42 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2


On Tue, 09 Jan 2024 22:37:39 +0100, Krzysztof Kozlowski wrote:
> Linux kernel NVMEM consumer bindings define phandle to NVMEM cells
> ("nvmem-cells"), thus we also want the common definition of property
> defining number of cells encoding that specifier, so the
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: add common definition of nvmem-cell-cells
      commit: c0e855d525b771e6fef67c7b75657380c9e02c31

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


