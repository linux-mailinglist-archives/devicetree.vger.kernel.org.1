Return-Path: <devicetree+bounces-234744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AA4C30392
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 10:21:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 01FE74E777E
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 09:18:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10D1432572D;
	Tue,  4 Nov 2025 09:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AzSJAZLl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86636322768
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 09:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762247579; cv=none; b=PBAj+yK3xizwTVHIDH5Zttt/hqqkECoBnjIYtitcnE41FIx1U2Am1BpzvtMDtFYGWThLZtr2+9t2racNuP1mcgXYZ/dbqFLzjwk4esRd6ILPJKQIhOuByOwFNOZ2xM+jOkArT4L78093/+qS8f78gk67/x+2QJ/ebGqITpK3xyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762247579; c=relaxed/simple;
	bh=LVUCOpp3kgbdkbFoCGBVeo/WTOIJWYE+4SUhoMULWNU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k0xLhyUwGxDJ/BY9i4tw5R8pp6nVlEjVKSYpKtDoYGOeUM5QjB6d8hZEb4p/9s/eMm9wedpEcr1+9WPJqdiawXzQ2MeHjZvy8/M3hwvnyf2EjaguDRj98wV4Ce9xQ5HDTb0faEtQoZKLtQZy/PFmirGPDEjH6/RNjeUdlI4gqU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AzSJAZLl; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-429bf011e6cso3799084f8f.1
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 01:12:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762247575; x=1762852375; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IclWx1Vbfu2B/23R8qVI8UP1mJRseEjCpbGNldPgb8g=;
        b=AzSJAZLlMqgJWxfj6A/9WCAapDGNkzMuX1EkFCvwousWKQMmr8nQVioLrLEm/FfS4v
         W7DBTcHz+LgAvw18JYc4+MPvvhIe09r/dMQtwBUcrhucHCWYzz+wwecNSto3TPRxxZUY
         l4snKHYFdPJ3BbsFHYnUSOnbkEetzulrBnuAkg1V3kaei7JrasdGOn3jEhXmirqgOmPo
         7BkzaTJ1dqhSH003szx9KMZIptpVAPJRnF2gWBPU5JENUkYYY+SUsLWePHhL2gMVTEQ4
         MltGqAw13OOE8KjOnPG1vxm78USkpdmnF8i8U5RKh0RK2SRWs3YWmTo1dwCvyL8NUCNS
         NrSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762247575; x=1762852375;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IclWx1Vbfu2B/23R8qVI8UP1mJRseEjCpbGNldPgb8g=;
        b=EzacSpLTw7cXzvC1Kl0ZI6jKO7jHR9WT5LpzSQAxmCGstG32s+5YLXqYIuadCNDTfh
         VhrpQH7Kb5UdV0T+IVsJUTycPgqqYXsN8SaOP0Jazv6x9XDbEK3too6bPUa0/ud8aW2S
         zmcgmNpDTZTtDFiWyWG2iF6TtXgVafFtwtJLTVBXnv+GRhmsegUWE1c58RkeCvNZglpp
         Ysxl/R4qD8r/EB6kqLY7lq9SvytqyDFK3avHVBirL9G0/SQEfRO8zL0Pjbpe1SM5MR8+
         EQaJchUGBzO7trFUvJFIcZsh2+nk9tyv1wWEF3h/zmJAHOe50YKJg4qEhC0GsEMQVis+
         +SAw==
X-Forwarded-Encrypted: i=1; AJvYcCX91CdlrSh+ym1oUedddO3FRlcE+Lxzsn+/+mPoWmniPjZpw5AS6ygCXlWmm2yFnq6C0vIrj6feiOHo@vger.kernel.org
X-Gm-Message-State: AOJu0YwRvlEk8dyY2b7rw3dbd3B6QDMMg4On8fwpvVwclE4lw3AbSZxX
	9NqRKCpi7DfRy6lsxz6LwSh4wh+Wi94CvxKq9hEYDqk70QjZWkALKE8n/8+sDXkDUpY=
X-Gm-Gg: ASbGncukDgyVGDWGFFS3bmrR8g3cx3NYZOrzUoGThl1UUCFkXABTUagOLErxhNIobyu
	Rxk8QGtvYN0NVTFzlsgAan3pzU32p6E34G9mc6E9urvGcgyNHZy/BkTrDBwYY9aHACdT1SZniSu
	QFj5LKPECz1DglNLu51B+g84oAvu5WT/BGNmoJ9CYScquXvqlgFj2mEmJPK7qkUcKYiKYRE822J
	sKmKN6hfv2DWdxlqOK+fB+n7Xsdmt12NK/rRXlGNTvmC+t+YAQSlkWTdR9q8IqZA5VpystFe5gO
	usxEi9QxjahZzMjYyma3jc1zXTGU1ouI5iA0rL5/MAWm1KXQ4W/ULhPuBssps+HDHACzK4AXUyq
	aonUskUnWRk8h9cY6KcUMMY9+B0T4LHIDS1CysAX1iicVKUq5TCGxDimYBsljL487lJrqbW1m
X-Google-Smtp-Source: AGHT+IF/Pp9gxH4+zOc8gIHpFU6GNskkEvWlylLIg3b30tnX3gqQy97OiEWbEr2mO0tiZsgRD9TuYA==
X-Received: by 2002:a05:6000:2088:b0:3eb:4e88:585 with SMTP id ffacd0b85a97d-429bd6aa226mr13535138f8f.29.1762247574378;
        Tue, 04 Nov 2025 01:12:54 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429dc193e27sm3519235f8f.18.2025.11.04.01.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Nov 2025 01:12:53 -0800 (PST)
Date: Tue, 4 Nov 2025 11:12:51 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Rename vph-pwr
 regulator node
Message-ID: <3hecqgngqv5rc2642h46rericsypiyjo4yj5bu4jb5prrxta3u@aax3dipbshzm>
References: <20251102-rb3gen2-regulator-sort-v1-1-908879d240be@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251102-rb3gen2-regulator-sort-v1-1-908879d240be@oss.qualcomm.com>

On 25-11-02 11:22:20, Bjorn Andersson wrote:
> When fixed regulators are not named with "regulator-" prefix, they can
> not be neatly grouped and sorted together.
> 
> Rename the vph-pwr-regulator, to facilitate the incoming addition of
> additional fixed regulators.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

