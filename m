Return-Path: <devicetree+bounces-189525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC622AE81DA
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 13:46:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00B453B4F74
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3C8B25E47E;
	Wed, 25 Jun 2025 11:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e4gy6egH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBFC625C6EF
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 11:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750851663; cv=none; b=Rr1J27GaSXFsotxCvcv2APEkJbpah+RmZBQeq4jUEgxqK0uc+nW9rRom8GWU1iKToBw/yEPdy2t/qDGu+Pe5BXXBBCLGMmgm4Yc1tkvhyMD/El1EKz+7gre5mP0cRxoesg+ATp+e+cvd5ZAqq6Z+s9+r5UDo0Nfv/navPkqrV6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750851663; c=relaxed/simple;
	bh=jJJlgaFEJ9g9K6Q8SrNlaqFfTep0VyaYLLhfj8cLj4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kzBbtzOgD1GVaEhP41Tyf9mw48ZIXatX5EP0TGnXUac+VFWMtqtvULE7JAIVmM/9QlesHVP/AuwrgBj9MgBNgx0hF2r29WtvPSiAS6qGddhKAMyYi6UDdJ4y/m+SDyZ6WOycaRf+HjUlZp2Y1RvxCFQRYH7GzuibMz2UtEEqylM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e4gy6egH; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ae0a0cd709bso171913266b.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 04:41:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750851660; x=1751456460; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dG7kxxjRLtrO7B9/s+bXTu7SCYb/AqhokTFr9duMWFo=;
        b=e4gy6egH+LiY5h7RVXdwd3u409F+zYI1f+AvOgELDFBGaLEsfQy0rrdcSrO/frS1kq
         pDfZstmLHf6fc3fgZR7DAOZZOX9PgR+AQybJbsxSEa+Sh8RJTXX6zoirERV6NAqZnUOA
         9ZvRlgKLvWquE9MlKb5Axc6fJnBaxN+uw8zwaunT8AuMfhubz2ClQ3uOCI4IvFEwkNsv
         qHheN+Qsij2lxy4GBnSxjnav86I0kyr5XuQMkg2OVgMkLOeY5RAVz1o1XROPQw7jS/t+
         DvTjst0cYJgzerIsBOkCX6jhWeuj2tj5mJ8tTJK9yoHEnStJgzwWYobSU0RSbYDuBuBl
         16ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750851660; x=1751456460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dG7kxxjRLtrO7B9/s+bXTu7SCYb/AqhokTFr9duMWFo=;
        b=IfqsGAggJPOzEwruULgFsAvjN5MpIFLW1RwYhMssELemM2C8VO/UnV05Boysbs4DWf
         WRku9tQ93Rja1mbHZQ5YlKeFJwpmro8DtvnRsj4ras9ax2LMsKeVuUhjVzA2fzU60Iww
         vLCwrXsbRKw+7bF3YpHujzI0199GaK9Am96J0Rykgs5sqPTDx2WbR0L+7bCsiYZk01oU
         UhDQj2Z/bE+Yg69ik69smI/NayRMZA8EkaXeM9kxaz+ZZOLdOoCUUdHalEsbCNFeOEax
         GMCCynxqK0/rp6neXRwhGnGNNMqSwgj2B6gcocMVe6h69pD3GI78xxcjIcIPtOj4aeoM
         jbMw==
X-Forwarded-Encrypted: i=1; AJvYcCXb2bUmFWPml4xe8NYFvWwV1aUlhAkmxJkU7msOlHiLpCHQqbTUEttwmTGkbvdJBv8A20qxCgcZyWuz@vger.kernel.org
X-Gm-Message-State: AOJu0YzV0tHGvMP1/jayUbsfVN6MbYwlcsG2LP/cZI5EsgC4ujPeWw9Z
	xN5mMna66OhDeJ0iEWanVxJwedfZpoAaY9BEqh1iSfZ3CWTFSXRWx9CJDl0Yr7OZB2wvphFrizV
	isF+r
X-Gm-Gg: ASbGncty+PDSNrTCyNYPiGYFXc0t7aNB5v2S9YSPpfUUwBQBrxkj3x7Le2DEWsiAcmh
	C2YutU/T0rWN9wurz8gK66ueOrt0msCj6lLwKDhYQ7NjX2aGTDC4M4o9/oJN5fm3Fm+CEkzFBfb
	MO5zhf86U8OTKgc63dZwEBQGybQwYr9vpFF2k5GSSM2tr1lYl/otWJbjUivAzWMteWtTJHgYAGS
	ZBQm5Y/E8NddT21CCXv5+IxgvJ5akk9OBSyGzIQg07biYsZHX3YLD8MYH2KPDQ5tfS//eFh6hez
	1ySD0sQ+Mv92lKMFfOJhmQLK9Y8WPEinrmd4uUjpAs6U+gYrvPsFpVSKKHs=
X-Google-Smtp-Source: AGHT+IFpDm4RRxvmymupPNfGTqlfEfo8Mbg7duMyL1/t+lekqFEkI+Q3G0VP+nEz3h7kTBtla3r67g==
X-Received: by 2002:a17:906:6a0e:b0:ad8:942b:1d53 with SMTP id a640c23a62f3a-ae0a7473535mr648229366b.27.1750851660394;
        Wed, 25 Jun 2025 04:41:00 -0700 (PDT)
Received: from linaro.org ([82.79.186.23])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0b618251bsm197805866b.55.2025.06.25.04.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 04:40:59 -0700 (PDT)
Date: Wed, 25 Jun 2025 14:40:58 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] phy: qualcomm: phy-qcom-eusb2-repeater: Support
 tune-res-fsdif prop
Message-ID: <aFvgSjkCNueASD7D@linaro.org>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
 <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-2-19d85541eb4c@fairphone.com>

On 25-06-25 11:14:57, Luca Weiss wrote:
> Support reading the FS Differential TX Output Resistance Tuning from
> devicetree and writing the register, as required on some boards.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

