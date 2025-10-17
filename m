Return-Path: <devicetree+bounces-228002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD77BE6C17
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 08:46:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4D7AC359694
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 06:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99CB7311960;
	Fri, 17 Oct 2025 06:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uc+OZZt6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FAA3310762
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760683555; cv=none; b=sfFZ9zWKQqeEwPA/vAiqvTb4hqwSVE6G77PAoMsiHVOj3jYyBwgToIk4qGVH8ZRle+uHj8Vy5YGEW2eZI4MCQ1da5fMpFsJYb3MKx8WViPQOQNgtsXS+UzRICbVt6DWDpwpEZWF5Ufv3+3B36Vl4z0eSazujg6DLHQkbZRJAR3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760683555; c=relaxed/simple;
	bh=Y8VoXhImxF1w1dbi0lgAcXI04oMk6uKN2d6iSlSdjTk=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=jF63FQx7uRkjLEbFfySqX9pBooR1XNqglSVsS3WT7LoORcU/dSaw50bB5LQiTYsXVHXUViTR7zrJ1fuVKYy0cb09ohuWjYkihKjhV5Res7V/FWUFdvpOATQJUqhAg7rUQamRtE2bFmTaX7A02FjPUTwx7+tfuFuX0W0QzNtfg1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uc+OZZt6; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e42fa08e4so13183175e9.3
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 23:45:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760683552; x=1761288352; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cxXwBRH3OdLI6ivv4eNJ4mVtVC/UotONZ6PQtTD+YIs=;
        b=uc+OZZt6bbuvCyutKKMIvPG3rVkJ2GIgOy5aVU3oE7vOzD4iXxA9OBh6ERxTy7Z306
         6oMQlEyYtTEcY6RMqDgtMo0KBk3c7SQTGcZx4O0PkbSbZeh5Lj/f3ET5DX448msxCLIp
         fIlPrD5ofd6qLa8I0I+vilTBnCF6OpGa0Pl41MZmELHLG7WEb/gGLSGT8UEnJme0OREz
         80XFbD/F4+ZGdgeRXqyWNQ5v06bb+q2uI1hguEZdJvA61akneZyY8cIbE8y0ftpS1EN7
         SnggNWsBVgZtWXUFnaDcjnY0DoAazpF6WIC8i6pZmE0i3wcCaWHfoyazoFoaHC8e1dX2
         g7UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760683552; x=1761288352;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cxXwBRH3OdLI6ivv4eNJ4mVtVC/UotONZ6PQtTD+YIs=;
        b=wf27dKIqhzmNczfAJ8EBpdQtll58tBrJSDlsfFvmN0G+cXSgTQWchPZv1XANWah2VY
         mtQWqk7GWVeqWM0U7of8UA9JzI8/HfNhn9T+V+m3mC2/IMby3nMaQcTtEyJNxLadBI3w
         QqXOycJfDjYtM8icKxbqkoicyBse5v6FyPLJW86L+SZa5Hiy973YEtMi8CSXYQuME35D
         PRIC/FXJ5tngTCQfgx0VjNkGgIvPwkpug5qq73LCJ2ihzgFrSMwOoDQYWdtyX0/b2iTq
         N2RdA9r6i3lO+P2OYMS6fpoLDEQDwqWhAAE4FX+EtjzmmJDlxnfgXTBsfFYfhWnrhhQ2
         wr6g==
X-Forwarded-Encrypted: i=1; AJvYcCUBnwmal6VdBTzwSkBPGsavyywgEuYdX9OsrHDQ+N7uM0LsKvEx7EqsMZCb7MvfLBDeNDRwv5nBYxBO@vger.kernel.org
X-Gm-Message-State: AOJu0YxpfdnG8el0a5lxDSAm4W27ZUCV3/6EJi9BsITdmUDNvLnUD9Oq
	Xj9xkCnpTrYQ+4mC+6Tf6XzianYEnMtGeEzV7rtJNYNOlGcw2k6SNyMxAApovaTgOp4=
X-Gm-Gg: ASbGnctUgWij/gv7/3wbiUBXLIGXZTqZtqOzz1TETwtanSkaI4JGTegXosGRQbeMWCu
	RbWMzq0s7INGg9/HXe8OpaWuJGl4sJPdZyGDFxEU8ju4y1zJ8iGM62nKHvlhXfsaMV6M5r41CAC
	difJDG6rVy0JrLjSKmYszlzqBwEQLaldl1na8qlprk1/QjHGoO8cxiz/9tRETFuzRq5iWbHkykS
	4hhL5FZomrM5j1GLfIPWXTj0KBPM39SEQRmfEBCnYBAeTObCfWDf+lb/ol67H5m6ucnVwxlX+Hn
	Ce4vqiDKSc1gNEc1RzmYfkZEH1uFZ5KNvhzE71v8i+X1cRFWEXKU6SRh4lP4zYB72v6u6Ovxnlf
	ITMAJv5RmNyQe6bSllxkH7OjL0zR5V0jt0Nzq5xQy3yC927oM2n2+KIzaNre+ylx28JXxI5R9WK
	MEVkp1
X-Google-Smtp-Source: AGHT+IGkGQlk9WZP2Ulpn4AcpV8f96nPE/t/dP3omgDpA/THfd4k+GylVoGgGF64mCc4wmfibWovUA==
X-Received: by 2002:a05:600c:1551:b0:46e:2801:84aa with SMTP id 5b1f17b1804b1-471177b143emr18469735e9.0.1760683551674;
        Thu, 16 Oct 2025 23:45:51 -0700 (PDT)
Received: from localhost ([2a02:c7c:7259:a00:6426:9b9b:6d3d:1da8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-471144b5c91sm63630395e9.11.2025.10.16.23.45.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 23:45:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 17 Oct 2025 07:45:50 +0100
Message-Id: <DDKE88TY46WS.1XKHP5I1S3CF6@linaro.org>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <srini@kernel.org>,
 <krzysztof.kozlowski@linaro.org>, <linux-sound@vger.kernel.org>
Subject: Re: [PATCH v5] dt-bindings: mfd: qcom,spmi-pmic: add compatibles
 for audio blocks
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, <lee@kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <sboyd@kernel.org>
X-Mailer: aerc 0.20.0
References: <20251017061314.644783-1-alexey.klimov@linaro.org>
 <2e4e0ad1-a030-4933-8bc9-7b9782234a15@kernel.org>
In-Reply-To: <2e4e0ad1-a030-4933-8bc9-7b9782234a15@kernel.org>

On Fri Oct 17, 2025 at 7:25 AM BST, Krzysztof Kozlowski wrote:
> On 17/10/2025 08:13, Alexey Klimov wrote:
>> If/when pm4125 audio codec will be added to a device tree file, then dtb=
s
>> check will emit messages that pmic audio-codec@f000 doesn't match any
>> of the regexes: '^pinctrl-[0-9]+$'.
>
>
> Future errors because of present mistakes are not a reason to do
> something. This makes no sense because there is no DTBs with that
> compatible, so drop this sentence. We never document compatibles,
> because in the future they will be errors (if I get it right?).

Ok. I can hold it off till it will be started to be used then.

>> Add the compatibles for two possible audio codecs so the devicetree for
>> such audio blocks of PMIC can be validated properly while also
>> removing reference to qcom,pm8916-wcd-analog-codec schema file.
>
> And that's now incomplete. You add new device here and because preferred
> and sufficient is to list compatibles, you change existing audio codec
> child schema reference into just list of compatibles.

So the way I understand this is that commit description is incomplete.
I can change it to your liking, okay.
FWIW, "add new device here" is said as
"Add the compatibles for two possible audio codecs" and removal of
child schema reference is also mentioned as "while also                    =
                   =20
removing reference to qcom,pm8916-wcd-analog-codec schema file".
But I can change it, okay.

>> Suggested-by: Krzysztof Kozlowski <krzk@kernel.org>
>
>
> I don't think I suggested this patch. What's more, it wasn't here at v4.

The original idea was to fix the warning or error emitted by dtbs check
but now the whole body os the change is your suggestion. Now it seems
it was not even needed at that point earlier which is a new finding.
Your prefference -- drop it or keep it.

>> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>

Best regards,
Alexey

