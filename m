Return-Path: <devicetree+bounces-112066-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 380B29A0E5E
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 17:35:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D761D1F21CDD
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 15:35:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A49420E03D;
	Wed, 16 Oct 2024 15:34:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dggg9Ifg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655C620E033
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 15:34:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729092892; cv=none; b=VFMT15xXp2lE0cblf0160+JvFCF7U2CiDaPhU4hbvOQFj988cpStHlnqRjgQNujUYUWmC93QM58fs1wM2Tz3jRL6OslCxwD7nvXLx4fRFuspjL2VrG4H056cYmtKcw/4r0gbzBGMLfTZHXHk6g54OtdMWxyYDFrhcWN7Z9g7yQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729092892; c=relaxed/simple;
	bh=/MYoco7iqlHkBNwd2rLLKTCQCwu0mSt/uupPMRkOCUo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vl5SgZCyBXssbP6oXmRL3A/UaJfmH0RFBA19UuWbXKtqE3q6CCTWXfRtXFTEqFKJLpmaNF3w5AUhSBpaYH73xRzsg1gNi1659sBoxsTRuXA/tqv4qD0ZRpgbFc1INFteOKtlt3PfeqkoPyIkrF6rXsIPiwXsgEkU1enKoSdSP4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dggg9Ifg; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d49a7207cso4410904f8f.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 08:34:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729092889; x=1729697689; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ll/2N/mDfpq1j97y8JmTrL91c71lFU2HD8C7OVqw+Ag=;
        b=dggg9IfgywpUWVJFdWW8tQ9Jrqa16lhGHGHq4wxB28L7bGGw3g60ZcbwK7VHN3nlCw
         Gqb2DWFb+tG1iVutW+iM+jTdMo2uJPsoVqmQZvMai9A2bSg7UA5jbeHXL3rXidlbF9hR
         vj1st+9IheSqkp2Tt/tKcTVoZ7YcLj9aKe3SNn6OLSvha+4UdFnjel/mihMl8GvCqITv
         9eCfD5vHq/+hdr1uWT761ak7VWnLVTJ4eydVEHbL3B9ozVd/r+Z7dncaeqwx/K4hJ/Rw
         nwzHTtOwvtoIG0sAp8EI5R7ra5BwIoL9aJTzWs/ooE4VeHl79V5b3u7q3/3k6Vxt0wlE
         MPRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729092889; x=1729697689;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ll/2N/mDfpq1j97y8JmTrL91c71lFU2HD8C7OVqw+Ag=;
        b=JRqp+v4MoWykOZ1+cJT/AC8myCMy7mOuuJLX9cGbVgROiEuOw+u0uQNDN39uhS/KWY
         Z5xB7QPRVeqhj7NxkHDezWrvxO+32QQSbYyV/MSz71RQvQKgkKPWeBYS9qYkv/sYG/lW
         zxoAF4isSlDoA9iSgur8cXt53POx5VyxkxRmID7YSWiA3BFkdj1mIc15L5Nkvn4IzJ1t
         h0b/78o6P35ZumB4sPCxvEGf4wwwqNYvo9LdbHv0YP8TOZ/DRNlf/n2LM5E7+LoQ2PfT
         zKA06oVysNB/WUKmpP73rvlU/jMmC/Pwgf/ZU8uIAzQvADRdM/sQ424h6mQnqOPZrT30
         d+Ug==
X-Forwarded-Encrypted: i=1; AJvYcCUn+mTfRy+ZUm8BP+GssEfMtngk5RxrZIKN2dw3SnG5pya2lNbL1WtjY11TPLWs+EiLqMW21A1qWvMC@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo8E4j2sM4sS41nuzkbiVVrFOba0tuOM5JAleN3VwEOBq+VmgV
	VQ9oUd63ois9ORY24xbnNiHv83ugqFblb5p8hDpi45/TSTuHxWZAurXj0lT8fGA=
X-Google-Smtp-Source: AGHT+IEaXCYOJ6euy9ckWxDZYbkCYwJ5tLzTlDpnGe0pGxFs0UdIZLc0IpEHxn5wsadO0vHSPm9wUw==
X-Received: by 2002:a5d:4acf:0:b0:37d:461d:b1ea with SMTP id ffacd0b85a97d-37d600c8987mr9358461f8f.48.1729092888632;
        Wed, 16 Oct 2024 08:34:48 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef80:a75b:8bbb:91be:de0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fa7a146sm4605519f8f.22.2024.10.16.08.34.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 08:34:48 -0700 (PDT)
Date: Wed, 16 Oct 2024 17:34:43 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Johan Hovold <johan@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Abel Vesa <abel.vesa@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100-qcp: Add WiFi/BT pwrseq
Message-ID: <Zw_dE1rQ-Ljsh-sY@linaro.org>
References: <20241007-x1e80100-pwrseq-qcp-v1-0-f7166510ab17@linaro.org>
 <20241007-x1e80100-pwrseq-qcp-v1-3-f7166510ab17@linaro.org>
 <ZweftESPrJNEsqGE@hovoldconsulting.com>
 <Zwj539cN2DJ7nd3A@linaro.org>
 <Zw5fzNZ_xCwPyw4G@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zw5fzNZ_xCwPyw4G@hovoldconsulting.com>

On Tue, Oct 15, 2024 at 02:27:56PM +0200, Johan Hovold wrote:
> On Fri, Oct 11, 2024 at 12:11:43PM +0200, Stephan Gerhold wrote:
> > On Thu, Oct 10, 2024 at 11:34:44AM +0200, Johan Hovold wrote:
> 
> > > Based on our discussions it seems we do not really need to describe the
> > > internal PMU at all for WCN7850 (as the bluetooth and wlan blocks can be
> > > enabled indepdendently) so perhaps we can just restore the old binding
> > > and drop most of this boilerplate for all boards.
> > > 
> > 
> > I think there is no clear conclusion on that yet. The old bindings
> > didn't describe any power supplies for WiFi at all. The pwrseq bindings
> > are currently the only way to do that.
> > 
> > We could potentially move all the "PMU supplies" to the WiFi/BT nodes
> > and rely on reference counting to handle them. But I think it's better
> > to wait how the M.2/generic PCI power control discussion turns out
> > before investing any time to refactor the current solution.
> > 
> > There are existing users of qcom,wcn7850-pmu already in 6.11, so I think
> > it does not hurt to take this patch as-is for now. We can clean them up
> > together later if needed.
> 
> Sounds good.
> 
> But can you please address the following warning that I see with this
> series:
> 
> 	pwrseq-qcom_wcn wcn7850-pmu: supply vddio1p2 not found, using dummy regulator
> 
> Not sure if it's the dtsi that's missing a supply if it's the driver
> that needs fixing.
> 

It's the driver, the DT should be correct. This supply exists on the
WCN7850 chip, but nothing is connected there on the QCP.

Unfortunately, it's not entirely straightforward to drop the warning
since the pwrseq-qcom-wcn driver uses the bulk regulator APIs and
(AFAIK) there is no good way to make only one of the regulators optional
there.

@Bartosz: Any thoughts on this? sm8550-qrd and sm8550-hdk are also
missing the vddio1p2-supply, so they probably have the same warning in
latest mainline.

Thanks,
Stephan

