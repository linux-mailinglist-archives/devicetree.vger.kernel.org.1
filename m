Return-Path: <devicetree+bounces-32408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4A182F3C7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 19:11:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10F5EB232EA
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 18:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A10A1CF82;
	Tue, 16 Jan 2024 18:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tmddb43k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DF91CF95
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 18:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705428695; cv=none; b=RXewc9KbmR8ChinviOYvBNFOWsxaObM3XAlMWbYH1TagtTEWiFtNlneUyzYEF6Eem9jBaTQA5buLUZsUZIhyZ3EQ83YKeH/DlVdfdPm3KhfXfxWXxlPDK/Ee8DYVwqQycpzujEE/AB0av6PDu1a6tAXx+PibLMgMk6GKOQa6yVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705428695; c=relaxed/simple;
	bh=M0Ooulm9S8WHLNo6AfrCErL0/OwFMQeru2lh9LT1eww=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=gsC1+UOXzjm3eYmqtlF24ksvUmRr19hB/EqOlsQqHbt3lZwP3NXCBniZ9FYh4R4ITvT8+bu8eXCt6tsuh7BF7OBPWImqUWhbJdbIl+L2Q3lz1eM1BncE4sbHdojMawz/cfAAr85mlSMsWMUmWOB9BMh1v+TficvhlR9SaSuV/kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tmddb43k; arc=none smtp.client-ip=209.85.166.46
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-7bbec1d1c9dso504953439f.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 10:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705428692; x=1706033492; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SNxgcWOo1csnjFsBhzJAhb4fTQBuYKqyH36PPDUAqrM=;
        b=tmddb43klQoDUO20LffXTBLPfgv4Y9FAsY3TKpVG1j6i6Mwoin4jsgY10a/KNQ7JoS
         JJaNAFKUgr2U+TVWa2mUpPgkbD9owDRbNonMWozlnjB6RyIdbAyOM/Nx45qJgfffrv3H
         rvHoOsUqLiJfUYDMp12k9HlQ8fuf/LDeGp3QSKOtAZlyLoYkNd9lixsp4KHnR43mdMOq
         p0PfTYEDXjOhD5XacqcnKFR7zuXSrVolRnlvtiZ9id0U3/rS+SZFwbeXZMxuUmfPJNsO
         mkLddh5Grv2lHkTlQsRtYUcoAtsdaxT49lb+Wl72hEvD+s/BTKLhKPB1gJB8SePSvuai
         UUzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705428692; x=1706033492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SNxgcWOo1csnjFsBhzJAhb4fTQBuYKqyH36PPDUAqrM=;
        b=maA6qZJodrxZadeYiazlCtug/LEMCYgBNNOzJ67Vo1BhEVFXM2sVN+HUHD3gjnHKOH
         q2AOfpMXw1go1Ip3tt7iwmFj4nVCyuTfS006BUaUBKyNuMf2RrSdw3ljy2cRkvOWO2Lj
         UE3YlAMzx4EJ1PGh3Hy9sS2Y92aQyjFXVinZ2RrmpGCqneJ9ud3RA3ODGl6YA9L7QKv4
         qeX4e3lwZxDkJ+jjZg8fQTtW+F3sWf48QS6WrE84EIIArlutizyxC5ThY/XpNynDWzSs
         fOVY7+L3bvZECIheLOnk7XNtugTIXx07qgvJUsr5rM94bE2dy0/6vA4MzUadRS5dRzgR
         xJGA==
X-Gm-Message-State: AOJu0Yz8xZWjbO6e69RabfDYxsXeAp0mfLT9T0gQhCbirZFqyYICY5EQ
	T0VxeaewYvO1Gr70oy0nDxyM4X3po5m3F8aq9C0SN8wPKEQB0g==
X-Google-Smtp-Source: AGHT+IE5QD79wikGUbt+f+gyh/dGDvkkcbx8JHtG+ewUTqw1m7M5U8NmftDLIr2A/UQiHvfv2iLRDc2vlArXMBbwfU0=
X-Received: by 2002:a6b:cd0c:0:b0:7bf:554c:bb63 with SMTP id
 d12-20020a6bcd0c000000b007bf554cbb63mr1637673iog.14.1705428692146; Tue, 16
 Jan 2024 10:11:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240109125814.3691033-1-tudor.ambarus@linaro.org> <20240109125814.3691033-4-tudor.ambarus@linaro.org>
In-Reply-To: <20240109125814.3691033-4-tudor.ambarus@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 16 Jan 2024 12:11:20 -0600
Message-ID: <CAPLW+4=BO6jkN+RRhO=8=79XtoOTRdfrEQBgDDzq8seWi8YMaA@mail.gmail.com>
Subject: Re: [PATCH v3 03/12] dt-bindings: serial: samsung: do not allow
 reg-io-width for gs101
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: peter.griffin@linaro.org, krzysztof.kozlowski+dt@linaro.org, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	robh+dt@kernel.org, conor+dt@kernel.org, andi.shyti@kernel.org, 
	alim.akhtar@samsung.com, jirislaby@kernel.org, s.nawrocki@samsung.com, 
	tomasz.figa@gmail.com, cw00.choi@samsung.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-serial@vger.kernel.org, andre.draszik@linaro.org, 
	kernel-team@android.com, willmcvicker@google.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 9, 2024 at 6:59=E2=80=AFAM Tudor Ambarus <tudor.ambarus@linaro.=
org> wrote:
>
> All gs101 serial ports are restricted to 32-bit register accesses.
> This requirement will be inferred from the compatible. Do not allow
> the reg-io-width property for the google,gs101-uart compatible.
>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

> v3: collect Peter's R-b tag
> v2: new patch
>
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
> 2.43.0.472.g3155946c3a-goog
>
>

