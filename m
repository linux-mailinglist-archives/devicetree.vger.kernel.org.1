Return-Path: <devicetree+bounces-123555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA149D51A7
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67CB11F220C9
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 17:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAFC21A7AF5;
	Thu, 21 Nov 2024 17:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P5S8C4bW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D55319F485
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 17:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732209813; cv=none; b=jHrnp88G2rWGVZOghaccrCg29qgp11oHh1cN8jDsorGqBfzmD1C4hN8QbNh1ppSQZHzLhfQhonXlywa9+/zXOAiHWRtsnk8q/3h4iL2vo+7usNELJpjdKlkSDfqer6FF0z7gERfIK8xIjG/2R0UdTAR6ek4HdeXClNhhxdzRP7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732209813; c=relaxed/simple;
	bh=yCHjjbvtrfT1JCkVsNvo5JIEc/EKUG7w/UabrT+59Xk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f1a0P0lj/CebRkUchoXjjpZY3+WcEuEs+EFYF2gnvgxx3yVOohMNGZx4hgGXQZgs+LVV6pdh7UQfZePteHe+pkVexTxbOPYlCrOjrdl+Y3WI2UxPFGauY/0a580LbfnlgDuaKNaIZd8RAz1dj+eWH8Vjujz+hWaCG+m0Nm0YSHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P5S8C4bW; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-539d9fffea1so1050402e87.2
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 09:23:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732209810; x=1732814610; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AWVCCsWBP9SsU0WWdjRRTAwc2KuY3q4MRUVtiMXkZXY=;
        b=P5S8C4bWwr/ENCnutwKF3T0d2bNA4QuI5IIlDZi9LleO/2w9tmGpOdI/l5C2rkyjmb
         rfiqaP2c6R8ISPW7MBVAlnjtUvWwGG3V8B+ne40pId5p6MikC5mr0BpgCP+feOET1wVT
         jdBkctzct3ADj7Qa9RpcGUxrZyPk5aIfGO8vCegEZlZ/nalO7fgr7cw6uQqxCgINf2Qc
         gC0jrF2RVT6jLj92j1LJ+1NvWh5Uaq58t5A6UIFJzu9dI1vM5keN6QIlK1oFdxRgkj6R
         jr427i2RYgQ5E0/BFIwJFNwctplrrB7yMwb+7TEpRrIQoHvv8t2xCOv5lGRm0o96tKqX
         7oKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732209810; x=1732814610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AWVCCsWBP9SsU0WWdjRRTAwc2KuY3q4MRUVtiMXkZXY=;
        b=gwQNux8s5rAB4I0hGnAydSYem98bSG++w60VOaa6sxeGCUHvyfTsdZom1Yp6xtBCGb
         IyhwkaA82nfMqqcYOCftk00BQXghVFnUolBdy8UFaPi7U4NvuAF6Z5avC6JOmAro6dp6
         208vVbxoISKdSJjtaWDjWyUbeEKOQgc8dFHcOjKqjdWjkzStNUEe/eS/HixhRW+k3s4x
         4msYiU549t9eetj+Rqq9mVnLZnCY5XnZSS50dyI29olJfDj9BMVbD3bBa31/HaptKosm
         96hS/pB7dPCA+nX3BF+8XwKsT6UGxORfQjNEq0W/UqzoCkWNpwoVFKOzKgLjeEOO2bKy
         6gTw==
X-Forwarded-Encrypted: i=1; AJvYcCXOH92koKiPKnWTmXSddaXDhBRjFK7IiKim984qJfNCwhkIsXpKxKCFFEUW20Zgq09V54i+2kZ4dpwy@vger.kernel.org
X-Gm-Message-State: AOJu0YxN6yMQvzR/fKJv1j6A8TVZP3uHPcZ+UxYmBkjB+CHIOjnieSDD
	vFnz40JxO/x8jNG6d4k4tAmVXM6Gcja0wHOtng2Ki3FdYKQn6yKs2atOW4GBvdk=
X-Gm-Gg: ASbGncvOi6WEv0YG16c1QJAwRj2vg1VLM3ppjNP5puHl2+1xYGNdKy2qqIJ6BXJwKVj
	c5IU4SAvqi2GHjagIPAlsFAcgYulaud9V5mZcN93k6tICi+aiuvIC2jSBFzs1ZGN5abRqJA1BPR
	Ic+jLXjnLjcypI9ZXveEh1Y/2W9NqAPVtAFVaPULPHe3XrEW9pf7V1K5gIZBcm6AfqEtxYEhLx1
	uZO2teW0LHGGYt28D68jCdN6tmzQnfS853gW8MK9pT8RrUSMaNRN3K+606GJAfW4Wy18KxU5or7
	mqkAurBrVfQHsCYXw4sBYYZenYhzzg==
X-Google-Smtp-Source: AGHT+IFNyWzb4+jLBwNmRWwEb/xejdO0xHw6ZZB4QrLGg8Zjcsh3wc7VZOCIAYezqtv7SN1TcZuhhg==
X-Received: by 2002:a05:6512:4012:b0:539:e97c:cb10 with SMTP id 2adb3069b0e04-53dc136cfaamr3468964e87.40.1732209810156;
        Thu, 21 Nov 2024 09:23:30 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2451903sm23560e87.89.2024.11.21.09.23.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 09:23:29 -0800 (PST)
Date: Thu, 21 Nov 2024 19:23:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Add support for usb node on
 QCS615
Message-ID: <xmqvfbzg7xl3lp7amnbmro4ivs3dhkdvv6pjx2wffrfidsixa5@grlcvuk4gbsl>
References: <20241121063007.2737908-1-quic_kriskura@quicinc.com>
 <20241121063007.2737908-2-quic_kriskura@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241121063007.2737908-2-quic_kriskura@quicinc.com>

On Thu, Nov 21, 2024 at 12:00:06PM +0530, Krishna Kurapati wrote:
> Add support for primary USB controller and its PHYs on
> QCS615.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 110 +++++++++++++++++++++++++++
>  1 file changed, 110 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

