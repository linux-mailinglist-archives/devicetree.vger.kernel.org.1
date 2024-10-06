Return-Path: <devicetree+bounces-108224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA15F99210C
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 22:09:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C7A62816A4
	for <lists+devicetree@lfdr.de>; Sun,  6 Oct 2024 20:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EAC318A928;
	Sun,  6 Oct 2024 20:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ym7gB86w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE2829405
	for <devicetree@vger.kernel.org>; Sun,  6 Oct 2024 20:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728245343; cv=none; b=JizyiDkMzC10oxYOD1oQBQRHFrOT0RLpjYZuwwPUJKG3xIbF7md7ITu3PJjCkjOAgVCgAHrYsBLffvWLphl/jbfHAqJYJk7x+4r+3wKGX8i9X5m8tJ1iGyitX9ZTNAuIoqr3eeKjAiZlL5xebDH/3t7MGI7aQAunl53MJnQbn/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728245343; c=relaxed/simple;
	bh=9xGDpi/jA95ojqNc9c3wQkAfuzmzm+dGXz6YwpBqnhE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cGjE1jt38fx7xxOelCc/+ibBUATRUWLbiGqfZ3h50+3pFhbWjtXddEX3d6IQwd/dtvKDWiIbx8s/r/nS0XXfCw7UCXPpOZLaxi71c341VluJb88DWgi0PzKAhcEA2/GSt72TYO/yd3apcLkNyp4/9x/H51118nM3L575XmZzKi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ym7gB86w; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fad8337aa4so41005551fa.0
        for <devicetree@vger.kernel.org>; Sun, 06 Oct 2024 13:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728245339; x=1728850139; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1CNIHOt8fvcwETMUAw0ufzYaZKbLYWoq5arc8dbVRfg=;
        b=Ym7gB86w5MXrtMLyaDAGw+upAcxgLYxAPhcqWqMLvZ087kJUjUMXhBfldPBqNKkUtf
         r1Swb459MBr+6NsfowzZ6NXX2E9kUZ0tRYJAMeEWAHijrDdlb1ayRrhyevMrnLZnJbwW
         yqXXxan8JTwPJ2YXoVPzcgHjYXsBrWBKMi8Nmcmtf79BmksV1WrD7jo5Qa3TgMozwyoW
         hPHWY8+EzxA4iHYr08y3O/8fYU/Q5wRgzQ6CuYQbb2fEf2fWg18ucGJgIO906oKCJxk/
         zNyiS9EVf5GBQJzFrQUdbFemLv2rF/XNjlLQcO6jNF2FFwF6w8pHyI6wOKH0+poNYdcJ
         c1XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728245339; x=1728850139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1CNIHOt8fvcwETMUAw0ufzYaZKbLYWoq5arc8dbVRfg=;
        b=xLDtxBmkSBG35rbcAmG0yOv5DLZJxXy+6Dk5sPUPIuyx52j9TZTbDDuBqGH3poKNlc
         gdkhOK96OikN7C3/sURJVXJZzt5tHFkuVGGeVjZAeMFFAIjamhMpv3RTmQ4vmmooBH/K
         r9xvuEjJldXJg86AUTJQBjTNvHpN6LkWJyEYj+Xmq8DQ15but0BZtE4i4Yv00IYrxxeG
         qfcDTntEyJlTrfBujRfcpe1er9ItfMNQ3F2lnxlEeJEdzEx9OPC7Mss8wNy3GtYShdXZ
         g/SFZzkq0FxfnmKU8G+kDugEUOTB5XIJnJNmEW3NvnnD26+ARVY+0JBinK31gCPdoVQM
         nlXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqr8OmxEjzq43m3HsuXYmAP4j2PtOO+iLsmdTTO0JEBo2mrdkyheoAzX/x84ojcGK/ojCLQwYK9Pql@vger.kernel.org
X-Gm-Message-State: AOJu0YyIlZ0ImvIt/S9NWWzC/KO3BB/2qDbXsWYngGmPz0XFSUvbtnLr
	iv9JwlVFq+dfO3xhBOiuCPCOvNNzsjDy8h5hTw365o9a+vij2SvIt4zU41EVPcQ=
X-Google-Smtp-Source: AGHT+IF6OTa70sIjp7tcQGOntDCvvftTUjqZUMbgta3o2jm6LLM0vAoPx5aZuA/nwzvRdyDNRSh4eA==
X-Received: by 2002:a2e:bc28:0:b0:2fa:c387:745b with SMTP id 38308e7fff4ca-2faf3c64c28mr37712301fa.31.1728245338878;
        Sun, 06 Oct 2024 13:08:58 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00-89ea-67f6-92cd-b49.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:89ea:67f6:92cd:b49])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2faf9adcb37sm5870681fa.60.2024.10.06.13.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 13:08:58 -0700 (PDT)
Date: Sun, 6 Oct 2024 23:08:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sumit Semwal <sumit.semwal@linaro.org>
Cc: stable@vger.kernel.org, agross@kernel.org, bjorn.andersson@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH] Revert "arm64: dts: qcom: sm8250: switch UFS QMP PHY to
 new style of bindings"
Message-ID: <ebbksal6u5kkvywrlq4d7f7vjntfjvjtfbrtmt3roj77dr2gg5@nzocu3q5har5>
References: <20241003143532.108444-1-sumit.semwal@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241003143532.108444-1-sumit.semwal@linaro.org>

On Thu, Oct 03, 2024 at 08:05:32PM GMT, Sumit Semwal wrote:
> This reverts commit cf9c7b34b90b622254b236a9a43737b6059a1c14.
> 
> This commit breaks UFS on RB5 in the 6.1 LTS kernels. The original patch
> author suggests that this is not a stable kernel patch, hence reverting
> it.
> 
> This was reported during testing with 6.1.103 / 5.15.165 LTS kernels
> merged in the respective Android Common Kernel branches.
> 
> Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)

As an important note, this patch is targeting stable kernels, not the
main tree.

-- 
With best wishes
Dmitry

