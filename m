Return-Path: <devicetree+bounces-56475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FEA8899672
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 09:23:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 513F01C21843
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 07:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A12633CF5;
	Fri,  5 Apr 2024 07:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iYsuHMH2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66AE6374C4
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 07:23:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712301801; cv=none; b=Hz8K0JtJ6192HBaQRwVoP5mLxKbYhxkvhStgH2kkcZExelySE+0YTZ3O7RnZQ9yu1cYx/7CxaYGOKxXNyiY8pdMJgyn206KJO2MK3rbzALRchBYQU5zSqqLhSrJTJuEs1egKxS9aC3G3uUt+PZanvOvYj+8u0a7rbq1awPxGHuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712301801; c=relaxed/simple;
	bh=8xdKzFa1VnOYKWHALQhOMQPnqmr+rwGwQXGIzJueTMY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=glxGnusr4Amq4xWBadpXGBtdb9uiyNXuMPuvQfgIcohoXhUKOqLVDwnrWx5vIjyPdKvperVIpcknvfywuO1sPa+FUuusRnRIMEhkzLd0J8i3lBpLh1pQM2fm2ABwaFcSZagS1My/DKBwCpHoo5lKpuaiTRrgxoHzkjMJrouMooM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iYsuHMH2; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-343e986aa6cso51848f8f.1
        for <devicetree@vger.kernel.org>; Fri, 05 Apr 2024 00:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712301798; x=1712906598; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Swy2Ymmin5bn1S0K0/BIJr14PVb2mCYW4gABHjS10eE=;
        b=iYsuHMH2wacPBIrhP7vpfKm3ie5aWDC8vy581v44MsGa0iejOZgTjgB8zsV50f928z
         MDsDT3KZ4vhT6uiYVfUJRvccFJqX85GZB03Dyd8GixTk4c/i4j2Oq/5dXgYFwLTIhofA
         uzIUTzKmolcS8KukNH1Lpyv8LNLyCJLxMfbEygujQLaXedhZEnkWEaO8AfAlDmCK9sgp
         2uxq6jjgaraDqg72slWfsVZlTOmMzDuKUgnl/uPLwvajgtwNRFCnWdrVLNOHlcfgwS+y
         8nzr0TRTw1Li9UO7GnDN/T6hwEFO1DZcKfovNgXM529cnMx1rHrej6E9rSK/qX2ewf5w
         rF3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712301798; x=1712906598;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Swy2Ymmin5bn1S0K0/BIJr14PVb2mCYW4gABHjS10eE=;
        b=lWFgQm9Iy9I1e17XIEdlxOhpH9nGzI/4ecnPXI54E9f5XwLLDNJ6WrnMt8MzF0PcXL
         IuA5FgDjvz2SUG2zfJIoQbFrWFR07n7oD7ieXqBRkKGSOknSV0yud20/oEn7N8EWXI7F
         Ufh7/wj7SWwlHhw7O+dLipfQUN+JY2MykeLSi/+yBXXWrlwYI8sgkz/vjNhlkwUWT0nQ
         P8Z0oNFT5+s4jMnq5uKX4N2tuJhvU3dI9VAU6J5l1VX4Oai058Jd9gAM94dZPqMJWWY+
         +GncLWXjtFEkFVocq7pe9G9R6T73+XYKQVEiskeJPgHfNzi53YF1FcVE0wjrLzuG0qHU
         vjhg==
X-Forwarded-Encrypted: i=1; AJvYcCVFEUmOfoxJqhzftNUgNXu5PFrKvS4QHLLt8g+JhonuvXWttWmGQcRZu0Oc22CKZZ2MEvrytREOK4KJeq3Qm3N3vRNjwBPxxgGxwg==
X-Gm-Message-State: AOJu0YzjnEPDsKBI2ExGs6zVwsqYtZrQhMbCl0pn9gz/LhtlA6j802iN
	xR36TnQLvnCiWibFIqWEEoA6SzHDUML2bGgOOklZNeBxdOnfBPuirkTCx6vWn7w=
X-Google-Smtp-Source: AGHT+IGFYhmbZFEXBcvSW4oTAKx1TZq9kP46lHeI8Ljnkc838zmC3DM9SJlHsNvNEbhOX4B03Xxclg==
X-Received: by 2002:a5d:5918:0:b0:343:6f88:5de with SMTP id v24-20020a5d5918000000b003436f8805demr424276wrd.44.1712301797816;
        Fri, 05 Apr 2024 00:23:17 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id r24-20020adfb1d8000000b00341b451a31asm1312626wra.36.2024.04.05.00.23.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 00:23:17 -0700 (PDT)
Message-ID: <132435ffc0eebed9317b346e880c4a69f09d6839.camel@linaro.org>
Subject: Re: [PATCH 08/17] clk: samsung: gs101: add support for cmu_hsi2
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, mturquette@baylibre.com, 
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
  vkoul@kernel.org, kishon@kernel.org, alim.akhtar@samsung.com,
 avri.altman@wdc.com,  bvanassche@acm.org, s.nawrocki@samsung.com,
 cw00.choi@samsung.com,  jejb@linux.ibm.com, martin.petersen@oracle.com,
 chanho61.park@samsung.com,  ebiggers@kernel.org
Cc: linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, tudor.ambarus@linaro.org, 
	saravanak@google.com, willmcvicker@google.com
Date: Fri, 05 Apr 2024 08:23:16 +0100
In-Reply-To: <20240404122559.898930-9-peter.griffin@linaro.org>
References: <20240404122559.898930-1-peter.griffin@linaro.org>
	 <20240404122559.898930-9-peter.griffin@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.50.3-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Pete,

On Thu, 2024-04-04 at 13:25 +0100, Peter Griffin wrote:
> diff --git a/include/dt-bindings/clock/google,gs101.h b/include/dt-bindin=
gs/clock/google,gs101.h
> index 3dac3577788a..ac239ce6821b 100644
> --- a/include/dt-bindings/clock/google,gs101.h
> +++ b/include/dt-bindings/clock/google,gs101.h
> @@ -518,4 +518,67 @@
> =C2=A0#define CLK_GOUT_PERIC1_CLK_PERIC1_USI9_USI_CLK		45
> =C2=A0#define CLK_GOUT_PERIC1_SYSREG_PERIC1_PCLK		46
> =C2=A0
> +/* CMU_HSI2 */

You need to add these defines as part of the patch that is updating the
binding (patch 1 this series).

Cheers,
Andre'


