Return-Path: <devicetree+bounces-231168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF79C0B0AF
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 20:02:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 35D334E2C9A
	for <lists+devicetree@lfdr.de>; Sun, 26 Oct 2025 19:02:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AE8126F285;
	Sun, 26 Oct 2025 19:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xTChXUf7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2B621B9DE
	for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 19:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761505359; cv=none; b=cSfogUtoe4W1kslp8PktZVnMpN0n5yipLtstTYOFt849nURJcGETUFbzqaoShfA/oGvKH++gAjbI9X442SKhtfWzE2uNELPOhr2bW1QWI3LCY6n7OHeOt2FmAKaaadDChc2kFsMTjHe7yR/xcpU5pUj7/omAmbgfTm6QYR14Qfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761505359; c=relaxed/simple;
	bh=2Zk64nIinYp75+zdhYO2p5F5t8LO7MM1BYxuCH05Bsc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N8V7nqJjdDwo7ftYFvaWcJQzKFi54QGz2PYbMofRrZin3xUjCmuucSoQsoTGV0RPhhLLwLu5/ZxEVVtE5rttAQ6rC7vXOLG+/XIp6pTD+9I+4wdaDscb57O6TaiGs69ziuCtRYBJs5kyR6eH7DipjkbzVxYlro8moJ/5ZtviOzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xTChXUf7; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3ee15b5435bso2791908f8f.0
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 12:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761505356; x=1762110156; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JTgQLFpDzOTh0ZoPt3i/pwuz2uzBGwVH7SJBsVRuI78=;
        b=xTChXUf7p6MpBXoFbVAcFVB9wWym2dF7Dd/8VFmhZnZdnfCpYA+k7EKRndFOgJqTqh
         Nzw+W7wYIEjYxbMjSeuTnpAeykfIHxnLJUc3C2OSxjOx5lMug1qmaJQaUjY6RnDqYZRc
         M4nD2JsTPK/3NzTDFoYDdDeNjDCnGNFxkxGMWr3q2PLr1lXlH4DSxbOBryzDe0EfPZMX
         UmjvIRM5l0sDDKy/w6kiyOPzfiUJNerI4Q9Pf4ipYsfbPRu+8oZFgZWs3V/H1gyltrCp
         XHZyoyQHo6+drdZJKLs5/B3P52yDwX1qFe3LNp8QY9Vxtbdwk2enfvE/MrjmJZ9+Yctr
         InwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761505356; x=1762110156;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JTgQLFpDzOTh0ZoPt3i/pwuz2uzBGwVH7SJBsVRuI78=;
        b=Ee2ARWOGYWo7EGLm4I1DuwU+T4bgzN1JXM8wGO8rhc5nheXgNBhimpy4qPrOXWCIDZ
         mV1o8cXoV1QYjxwEnWmyFcC+yGCFR5ziGd795YqxRu87Trd2im8Ckw4Q0j9IwGXMY0IJ
         +eEplwOSNtyryNCcENBAo3qowsjRmzVpCja7Iw2JmkQVaTTC63ZmBbgGaAzfJtUGOgNt
         7ERwHB475X0YH7vRFFwXwrlw9P2JD6D636kPCpMX4qYxhOzh2elZvZ3vRK+lWk8O06bO
         GQH9Qb7dd3PuVl38tUi5XjftKvFG5DiWIi5v8wygx7iUvzuf0p5GA4DYlm3W2vsjVAxP
         ca+g==
X-Forwarded-Encrypted: i=1; AJvYcCVf3fByDDnb2Ds/ejdzp1RrHVPn0FZ3wxkDHDUm0v7Gt8Lmhh98u8buKKpa4oXbyZKM8McI1e0XJswQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxeX4ZzGJb89OSr9BKvRMrR6F4mbu+Qzzdi0H80YAISIm9LeTBT
	JPxnCzMVHk8xJck1v5s/ytML919Z5dkvz2NlfTY1znAogAy1W9q6fnhZdohscasoEk4=
X-Gm-Gg: ASbGncuw/+wMtYItQyTC0L9XNTmAdbDu+q6aaKUFsEwfG2y3WXjY9x+vAZBqPl7xNlP
	D3nU4A7DsbNYd6x3v7pTtfxRu21HbkO4+d75J89Q72cZA5LkUuO9lBIfjCiN3DjqJnDY3bcTrqI
	Tf5I7BzUSqIUZKoC1SUS84RJj7OiuzrdhMXT9U2giKE83GbnueIhLzZQgu98G1Ju/tQpqZDKluJ
	wCJRwSf3Wp+/qK9ysiBW3VZ/3PqKpLTYnR3ABHIviEOW2zWmKemM+TvO2xEFKhyhITF5Rc8BBkb
	/uDz/Du4+Saqo4qweclPhNs9fQiuMeUVTG/Hu6XO9ZjbAgfOS3OcS6mPNo2/FQSi0czfPAu8MW7
	hgHA5JbQtNDsYtR30m+C4Ugo09jRDT+iVkiMntdxDmB9lZBCrqHgON75gPRUCx7RGWpaBXe8O4q
	nbrVuO3H0=
X-Google-Smtp-Source: AGHT+IGxHR5B1DhcUj3Sg4f6YGF6eRKC27Zj/+bUenMC5vwB5qpsgIYVS5DHdOJagXUhkL1MGGao8Q==
X-Received: by 2002:a05:6000:22c9:b0:425:8bc2:9c4b with SMTP id ffacd0b85a97d-4298a04068dmr8285438f8f.6.1761505355881;
        Sun, 26 Oct 2025 12:02:35 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7badsm9698313f8f.7.2025.10.26.12.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Oct 2025 12:02:35 -0700 (PDT)
Date: Sun, 26 Oct 2025 21:02:33 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Sarthak Garg <sarthak.garg@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com, 
	quic_pragalla@quicinc.com, quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
Subject: Re: [PATCH V3 2/4] arm64: dts: qcom: sm8750: Add SDC2 nodes for
 sm8750 soc
Message-ID: <wqkmiumkn4mha26jlky2o2dyplchz4c7kjlhgkictlep3gjoga@6kxhawbf2ytz>
References: <20251026111746.3195861-1-sarthak.garg@oss.qualcomm.com>
 <20251026111746.3195861-3-sarthak.garg@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251026111746.3195861-3-sarthak.garg@oss.qualcomm.com>

On 25-10-26 16:47:44, Sarthak Garg wrote:
> Add SD Card host controller for sm8750 soc.
> 
> Signed-off-by: Sarthak Garg <sarthak.garg@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

