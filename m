Return-Path: <devicetree+bounces-218870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF766B85171
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 16:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C1B27B8AE5
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 14:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED06431B113;
	Thu, 18 Sep 2025 14:06:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B+A9wdZn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1314D31A80F
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758204410; cv=none; b=qPdC1XJ3Wyj5kQ/YXaniKk8ywLalrF28jskwLLivfgmHrzRoP3YwZMHnZLpTQpDTtJm0MI4LFbrNM41FkzPgJ2Mfa8qgXZZ2Ky8YYDXrqpjEqmvtG2kyYOwc3ztlvFxvGRfNw/zImdHs+/8WSbTr/+iPNn48WkbgnEZm7WpOwYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758204410; c=relaxed/simple;
	bh=kVCd8Fct7e7bf0vwHwrNQa3GHUMPil3Om0eSTrEc/VA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=rUvaX3Es8TnYmjyAUiscSe7OsD651vXd7A/D2wv/DLoTFWF4x3MviBTY0oh5qXr0KpfCQZYidOFGuqvTRvSKB9cCwdj4FOJiJeYMCk737CWFKQ8yA5niTxRYvJlQ2QXh9f055zn6f0QoFVwQZGCCEwT8MZtxSfbcmfUWy18lZs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B+A9wdZn; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45b9c35bc0aso10379225e9.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 07:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758204406; x=1758809206; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Qwyr/Q/DO684tqA5E2UFLoEcNHQATu4w24pIRPlXIs=;
        b=B+A9wdZnnFszIaqjGLTOGwB4bzybE6Z3yYVzNxuwhlKBKZn1rTYw/x6/9P1K6z+MOj
         xAyn+YONwQ2Kkt4dxgt2WlCvKuIURm1Yoxql/JiRLgTJa3svrUVlGWDwM8JMx1id4vaN
         cit6qp0pnFbfNCZn1Byu/DfEQT03132H5s7ra6z+DfNmJwOtBRA/SK3yi9bUrFdJmPIR
         yENbC72+vcWHCZgzvvqPwuAAyzmIGkYyznzNBJs0rnfjxDeJu6kIRsQFT4iKmDSN+7Xs
         96bi2y5iS2Fgo0fUFEMwcQQIhH7c3YFDmNVfxjcTrc2EniEijAOz8fW8JQZqSQAsH01Y
         fKCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758204406; x=1758809206;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+Qwyr/Q/DO684tqA5E2UFLoEcNHQATu4w24pIRPlXIs=;
        b=TDecI/oFYwcm+6qTZpXzaXH7+iPSUcAGPi8954jErFboJYS8r8UdnwoPux5cDtcCH3
         VaOpr3hQ7o4gAmxfHerFg4TcaAlpfe/b9m9pXBfGVPgPBHJxd2d72nhMpKRsZwiY1w61
         K4pG/SWQQagU6liS4GvFj+5o9loYSfxi/p0lI9o+9O0hvVDQTTFY9vLXMckoIpbs9ciQ
         2JIVgNhZKZ+CkuF5GLbfDLJL8qv05Ay7KcWioTl3h+ToaF3tHkNUVo1CLnALEfNMXN9X
         HNB7EloglFt6O+/el0XyeAmzjTcbG9uM+BMSndAcQn/8Jv/cHmUnlhIMof3gkv2NODgH
         KNMA==
X-Forwarded-Encrypted: i=1; AJvYcCWipQ7xVg0nbxupdQRMBiqgomADnABCdNCrlb07cQw7GsRPJFo/iCMSruLbrYCipvU8uBeNhdrTgtTY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0iEfNX1lIBP33gokkkUKdMQ3+9njRBIIvH2NzyJNcTcvJu/LX
	tBAvkbWyo4D0Slmjn1L279ZROn4qSDyU+i10a/yS88pV/9jO6fAW5I14R0nBH7uRljE=
X-Gm-Gg: ASbGncvvglmldYicP+pSwrh+IgPpWaJ/0+LpvYRu0RF/MDgwhKkTA9ejIyRSeZgmHcp
	CkD06etD5IDZdPFa/sMvptfpdbyfYHppm9ONfwr9lQkEWT5B0DfpgPpFP+ffdGOQFyrfxgIbTMo
	Ovh4MvWYdYBXzHN2sg/KF+AGBE6QT3SaDyRb+yM2pE6ScsFtxdaXbgo5uO2+aYoAKYAtirGNTU3
	EE3BORHZEpZwB4I7hQn2SW9UKwqHHr+pWYHdNWbGzd2/Y3Gi2wJeDzeSKbEb0Q8mUGKF1g7NPou
	TZogh8Vbm6UMfdE/2ivwdgSS2NKVFX9XTXf2O+cf7z9A2/8jp5jjseEJtGHbObTrXWG5L0qi8f6
	TCmZcXir+YvxW1VO68FJokMBHdFZ6y3mWC9r1EUyhAgIybYo=
X-Google-Smtp-Source: AGHT+IERljH7jdoxo2opn/uBJwfRgd6NXD2EBQPVMIWYZg2WmEP7Evl3akNrhDu4Phe9l2VQFkR+sA==
X-Received: by 2002:a05:600c:42c1:b0:45c:b6fa:352e with SMTP id 5b1f17b1804b1-462d4ca0573mr40002205e9.18.1758204405811;
        Thu, 18 Sep 2025 07:06:45 -0700 (PDT)
Received: from localhost ([2a00:2381:fd67:101:6c39:59e6:b76d:825])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3ee0fbf286dsm3713795f8f.56.2025.09.18.07.06.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 07:06:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 18 Sep 2025 15:06:42 +0100
Message-Id: <DCVZFZQUBDLU.ZKUOLCK5HWSW@linaro.org>
Cc: <quic_kuiw@quicinc.com>, <ekansh.gupta@oss.qualcomm.com>,
 <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>, "Dmitry
 Baryshkov" <dmitry.baryshkov@oss.qualcomm.com>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v10 2/5] arm64: dts: qcom: lemans: add GDSP
 fastrpc-compute-cb nodes
From: "Alexey Klimov" <alexey.klimov@linaro.org>
To: "Ling Xu" <quic_lxu5@quicinc.com>, <srini@kernel.org>,
 <amahesh@qti.qualcomm.com>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <andersson@kernel.org>, <konradybcio@kernel.org>,
 <arnd@arndb.de>, <gregkh@linuxfoundation.org>
X-Mailer: aerc 0.20.1
References: <20250813030638.1075-1-quic_lxu5@quicinc.com>
 <20250813030638.1075-3-quic_lxu5@quicinc.com>
In-Reply-To: <20250813030638.1075-3-quic_lxu5@quicinc.com>

On Wed Aug 13, 2025 at 4:06 AM BST, Ling Xu wrote:
> Add GDSP0 and GDSP1 fastrpc compute-cb nodes for lemans SoC.

How was it tested?
Does it actually work or was constructed from downstream files?


> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 58 ++++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/q=
com/lemans.dtsi
> index 322abd0294be..a4c79194cee9 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi

[...]

Best regards,
Alexey

