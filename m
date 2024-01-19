Return-Path: <devicetree+bounces-33270-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 45516832CE3
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 17:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F093E28305A
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 16:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0257A54F87;
	Fri, 19 Jan 2024 16:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O0oOBPl1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BDDE54F89
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 16:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705680615; cv=none; b=qXVsz4o+gdr6c9DTopJPhGNiBxsORRouVnkS63jm7EJ+9jrAuWVO74ep3VCNGU7TKuOonatOrnf0W1zslS5vVe83LQiMm5rdm0oIYZHBotMSE9yd++mxCTgUcUc0ewtc5LRCeuUfMEsT9TxMvqObouK07eY//SzgTQz0GesXszM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705680615; c=relaxed/simple;
	bh=UIfSZZLrOU6yAjs83tQxP628/v7NNSkU0fQmLwQ5Rgc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=amsOysSe85bUZrhEvFcraquV/h+v9qIxq4KBqZCnz7Xk1ZHuLrblJBk9Fx3AQxIncn1eQ7okojN10XQfNKgrk5wbIFX2/55DrD1VRfryBqUbyMHi6tMLaRoIZABmJ33yv2WvINrcilB9lEnRaBcjHvuWawdo3OWTKcEyJxG0/t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O0oOBPl1; arc=none smtp.client-ip=209.85.215.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-5ce07cf1e5dso629311a12.2
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 08:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705680614; x=1706285414; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pQCgIpzx27vwofqc1JrDE3mPbm28nF45xDQ2x4EHqYg=;
        b=O0oOBPl1HnzDOBptxY3mHrILPDDqYYsBbHHthZ4fLPO25Hq+aIGGU3QD289YggeXRU
         Qh76VBPuqeEnuq6GMQel73FQcOwcaedTz7PMpd7CU9da+CBF+TU9rXGfOanodGmCidOX
         xjx/FoiJLFWVjn/FeCNyiG5H7i8/8up5L+AA3uRExaCEAmIdF8h+URKlFhMfJ2vB6Dhw
         k00ObGAJaX+D0ph/ljST6hZ9LgP+07+lWGHmi9iveLxlypIzm07uaWbVncvquipFsLMQ
         yvvSDn+IbHjHGIOa4CluxTUolyf8GWaMRmINFBeYE54K2ic5tmq+gvrsW+CUKD7XBqGw
         5QQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705680614; x=1706285414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pQCgIpzx27vwofqc1JrDE3mPbm28nF45xDQ2x4EHqYg=;
        b=Uu85arcQq5uTrFYPkygQKGfBEaV+BZQBaKQ2o4NA5MSd7LfKJB2NNpUL1Io/oT3Th7
         XAfakEqBojYdr1i+cDRFS0scgKneAhYW2axB8+XuuksWJ1qVFGkL1lkpVU1ueuKB9QJG
         5fgnZi+NW8HR80pfGOpD32Ug2vrtO7IsOR+fU7hXUNepI8etD6IsOEfxaonXcPxSt7Gh
         s9jrl+raI3kUmhTssHeJYMy5EwYUSrsYCECZ3EKHCSfzRzIVMqIbWbxM5Y7f2SQGDVwZ
         Tx7IPP0QeVvACefVqkZVdcLRhLXg00v2XL0m56HppqLTO5gE7gb5rBBig808Yc3vLXXj
         TaRw==
X-Gm-Message-State: AOJu0YxCE0oYFxUqUkYbUdR36IOWkTzNJlrPc+R73TBWn2RtYQ+DThQc
	YhncHY/5wExpSrWM8njxtlflvLSQa9BUVYsPQMZde0ckPX39nZqwO33LN++RJoRLZc7pfeeaF5v
	LU0Qq2YtJrq+KJeuFLiR7HVUIG0xI1QvqA0PXzA==
X-Google-Smtp-Source: AGHT+IEiy4VyavSARFTn3SaPOtL6MlCYRRMqM1J8DTeMjjwa3YfuzfgYhlEBz8SnyqE7ELSpye3aSowtoQGWAJ59kBM=
X-Received: by 2002:a17:90b:124f:b0:290:467b:b7d6 with SMTP id
 gx15-20020a17090b124f00b00290467bb7d6mr1054946pjb.84.1705680613997; Fri, 19
 Jan 2024 08:10:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240119104526.1221243-1-tudor.ambarus@linaro.org> <20240119104526.1221243-3-tudor.ambarus@linaro.org>
In-Reply-To: <20240119104526.1221243-3-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 19 Jan 2024 10:10:02 -0600
Message-ID: <CAPLW+4=GvEZXXzzRj789JmCzLLnQ6cNDLhbF7i6nwiW9x6EGHg@mail.gmail.com>
Subject: Re: [PATCH v2 02/19] dt-bindings: serial: samsung: do not allow
 reg-io-width for gs101
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	andre.draszik@linaro.org, kernel-team@android.com, peter.griffin@linaro.org, 
	willmcvicker@google.com, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 19, 2024 at 4:45=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro=
.org> wrote:
>
> All gs101 serial ports are restricted to 32-bit register accesses.
> This requirement will be inferred from the compatible. Do not allow
> the reg-io-width property for the google,gs101-uart compatible.
>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  Documentation/devicetree/bindings/serial/samsung_uart.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/serial/samsung_uart.yaml b=
/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> index 133259ed3a34..0f0131026911 100644
> --- a/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> +++ b/Documentation/devicetree/bindings/serial/samsung_uart.yaml
> @@ -143,6 +143,8 @@ allOf:
>      then:
>        required:
>          - samsung,uart-fifosize
> +      properties:
> +        reg-io-width: false
>
>  unevaluatedProperties: false
>
> --
> 2.43.0.429.g432eaa2c6b-goog
>

