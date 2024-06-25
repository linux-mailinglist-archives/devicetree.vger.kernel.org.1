Return-Path: <devicetree+bounces-79593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 108B2915F2E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 08:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A43A51F21B9D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 06:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FFD2146593;
	Tue, 25 Jun 2024 06:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="NAXHIs+N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7F721459E5
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 06:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719298766; cv=none; b=YtUb/D9UuJd6a8GrWj0oJOnU549uT5uPaARs6TaXu6SDDZzf9NQAvoBym7bgtKeuxRCbZuxp0zfse29piI6dm5vP4P5RmsEbFFqr4bO9iLnRGVGMAv5BPpxwkq7p+QygH51pzBSGvyFPwK27Gq7hKAWbLuxi/r+XAA6IyQOMICc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719298766; c=relaxed/simple;
	bh=aDB98kbQuG4jMhc+5/YnSzAXedCDskwQrRRjdfeVksw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mmQO8YzHgW+rES9NmpiZFRO21C45AALbfQg0WahtHMGmxaKViwqs9Hf2TTB8zsuIrv4zk0xxP5kCLyDf5BL8THS8jcl+mx+C29lmECMLIeCrt/WhnVO4PD8FjYZFDYY954Fd74hEhwNqW5qjKzxe8IKOCdPKWoHxSA6E9PnzcGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=NAXHIs+N; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-443586c2091so180881cf.0
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 23:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719298764; x=1719903564; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aDB98kbQuG4jMhc+5/YnSzAXedCDskwQrRRjdfeVksw=;
        b=NAXHIs+N9y3WHT3Ctj4tI3OOaGIxg9dTxfSftusOHOxFWAlSCaCXb8P9iP3AH27cdS
         EYdH6XipLN4A3TJu7aVmIPA5hIahPSS8MR/Lps4SGmjki1mBTTq3gAUsc1eeG+tkk7mj
         bdP/ZlmOS0J1mMAUGtGHtnTVePJsExghI7Da9lh/0FMbAcjy1uKRRuE1aFD/+S36BVYX
         kFYX08MgR+idtlptnTceYXdCIad4xTXzT5ojEshTU0lcv1PBUYINphoBvUvWnYHMXlmi
         P5HrM+jI2roUG6DMQuxesyC1J3/Of2atkmnZtwewXE4xXGsypINIPWUwtkrvbRnU19qY
         6soQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719298764; x=1719903564;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aDB98kbQuG4jMhc+5/YnSzAXedCDskwQrRRjdfeVksw=;
        b=TShfG2FaZuN4yuia0FlBAVhpYkBtm2qeNzQzN0JuDCDRed7TBnXBfhRP7SPKvK4AAR
         U1P5ia6UUeOWdvrpcDyRVAoUA8YF0m9Q10gdxFKF9RlB4aa3pJ4iVuiuPwWAGJzGGRCT
         4SptbeP9reU9vz+LczRZ2KmOmURIWkvCFQSutlxISM1giV0piuKZjJeMuuVoiMKsIzNP
         QDAx8v7JNqClpUu5JMNLKgFCeEddfbHmLn/EkJ8GoZ3I02M7JWPodzuujQ7m/hVXaCOh
         Sz9fuhq8zBoaoG4Pq72A/V9uwgUJZamHJHVxWhjUmvsCL0+tOwVKOsFhOCLkY5EtkSTr
         8jAA==
X-Forwarded-Encrypted: i=1; AJvYcCUXl6/GksIZJZNh17rHnaevmocgfn4hDxknXY2InoWdMp9wntelBH0LEQByk5qVXt1v3dJGrnBxTlklSlmOGVjRL4hwHJyHe88+Hg==
X-Gm-Message-State: AOJu0Yx/lAmDyWcDvY2q8VXoURMq3nxNwtLaTmCd5dIYCoW5hvdueWH6
	9+2AdemZdFfIlRtGGc+h0TwBYn3TMSAJVXiUGsfSRQ4QPRJyW8ucUv12acRhSqIrVxiP8WYemB1
	mgxw3BRkoZ0ZuvaSrfhCu7W0bj+s772CSUu3cAmzjaGdCLzSu9MtxvFM=
X-Google-Smtp-Source: AGHT+IGlJT0nqE32CrXN7HXAt7RK51Q1QHp5YX2obTfJeNPoOwE90ZsgUuMGJJ3b2P0/xpgtbmKWay4QfzyN+SXaZj4=
X-Received: by 2002:a05:622a:1483:b0:444:bd5c:eb20 with SMTP id
 d75a77b69052e-444f36d473emr1441851cf.19.1719298763626; Mon, 24 Jun 2024
 23:59:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240611171600.1105124-1-aniketmaurya@google.com>
 <20240624052851.1030799-1-aniketmaurya@google.com> <20240624052851.1030799-2-aniketmaurya@google.com>
 <e3160411-59e0-4806-a00d-b99564384180@linaro.org>
In-Reply-To: <e3160411-59e0-4806-a00d-b99564384180@linaro.org>
From: "Aniket ." <aniketmaurya@google.com>
Date: Tue, 25 Jun 2024 12:29:12 +0530
Message-ID: <CAMmmMt0Qd9tS3TQ0nvC_x=yskBbpTwL4o9tD5+6F8Yi1ueiG5g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: i3c: dw: Add apb clock binding
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Jeremy Kerr <jk@codeconstruct.com.au>, 
	Joel Stanley <joel@jms.id.au>, Billy Tsai <billy_tsai@aspeedtech.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-i3c@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> Your email still suggests mismatch with name. Please confirm that above
> this is you full name or known identity which you want to consistently
> use across all contributions. In case of doubts: please consult
> colleagues in Google (or your legal department, dunno).

Hey, my full legal name is "Aniket". Please don't mind the text in the email-id.

Thanks,
Aniket.

