Return-Path: <devicetree+bounces-228840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C94BF123F
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 14:24:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A19923AC8A0
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 12:19:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD64E3112B4;
	Mon, 20 Oct 2025 12:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pRj+KyPW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46363126D9
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 12:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760962719; cv=none; b=RY2jfhG3dS+5g5rCVM8K1Y8lEVq5sDlok7eDsMPgpfYvXZWJ1XOoUpAoIwfG8J0I0RAEhgb41S2GXD3VeS3YikrntoxeJESKl8s9OzDuTXEtSwgRYxxMYAz+bKZT23DE/R59hM0Eo8M2WeDtrm8A0oOuqzMwCw14FotdvsDh4Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760962719; c=relaxed/simple;
	bh=8a8AR6tiCU6DFQ3mg8jBjjoUZhwx7+JJL0g4l6drVNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o7DvFrCf/n/sLz0AshqXiLqiIqYVSqgBJuz53sUODu07RuAYP38J2rWb+RkT4yzBT0oEiXIvPl3PT3Gai4g7Sns38kVWAokiwd6PkatJf2py6+qdg2djtjU+bj0lHpbWS+QVbOOy1QK6KDzeqtwal0e13F8AYoRGiHK3Tw3SJa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pRj+KyPW; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-63c1a0d6315so7552903a12.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760962716; x=1761567516; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mHtoWy0rW/Dfa0K/dIGZkJv1hj/FYjxxGrknVD25rf8=;
        b=pRj+KyPWrkTIdnv7YGRt0B7woKEkF2ePySDDIiHidqCeT9jsbQWw0tmSutPgBAhJ+6
         m1ikHhzNhPMxiDDRM64B3ZH2TrIlUYNLjv5swCCUkvL3cFzNgDboDaEC9gZrOMOegMq2
         cvSuFABVs+fPUxYl1Kt7QKIYQpvl3kSY2rwdaWZMhArBKQX1iefhaY/fv/OcITat5o1N
         yhiPyzT9uxZha5ZYOzP1Okocw+gGci3uqyZfwHu5vzc/qp1dYUguAIfAbKVWRT0B+0jb
         wg0OSG3O5CYN+1nE3HoOK2kSp09Yu4gAYVzVJzHR/LLbSzEQFsSWuMUxqLkeoMaozT4c
         UvLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760962716; x=1761567516;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mHtoWy0rW/Dfa0K/dIGZkJv1hj/FYjxxGrknVD25rf8=;
        b=bswPLgwp5AdaTEDjF8w62/hwfzwDeKdLjcVTN61DkG8DT3jhN0PGmwoiNU/uW8Oc6A
         +uGci1huNucJ64ZewWxEGoI7VDPr72lTzM4hDiZNilVgVWAt3Cut2OEoF1BMYghsvy7f
         qc7LOydftK3vWPKPRNiTS8MtVF7o/WJnMkKmEXPhladda9wIHA6+VyjMV4ONOIWpluMP
         ic+29J8PXVr2syeetE5XRYYRBgaj6YDqEmR4Hkc5WHcq1sNnD0rijOUgec4iC8Rnz7wh
         koe4bL1I1J0igwSL9QpxLV4raAhUPvlI/MpgMtzPvr+NQSBhICOrie82yR0RHOFgTYb2
         uhnQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5IPs55PhAA40yG40t6SmnqWM7btb0O+2s5y1TG/n7NQ0q9mXHxC+nMbfYVSDuGEU0/KshrAVhKpey@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/USw00pk0aD5jIu54MXI8IapxpXpBNFhSubAajb5j87XZhezE
	UOxYb69p4DONL+0fBYZ8VGs9UEFtz8/Wa0EpjJgOEGhiwSZQr/+XT6JjgdTDl4l7Nyw=
X-Gm-Gg: ASbGnctFIygmUXR8uA19fApxHH+UXVc5I+eQkNGRq2T2D6lX6WUNLTFcgTLKvBO7A7L
	OYVf306z0xbmueBXU8tZp1G510ckygKuxtRVJ1I/3b/WG9DOxqWcPh4oauRQ65mHC/GAK2yEiR1
	MPr1Sl8rOu0oTLhDKd1QMc+R8fkuiXkqmiTlQW0Ff2or+B1oEj7czFbhAIDxMl/RWVg/F2EkQC7
	vg4ATkpOfyvkYuTBd945wzKrFoyAUo1/g15apknZeuOLuBS8ctkgV+FxYrdh7+5Q52M8kUWw7OF
	jShtJNDiMMeVrTV3Xz3Y92YoUsJVLuSqETXhNFKBdJOxOnRNs+qwwe1i3huWqm8qKMkIqKGQTx3
	fm2cN0PkqvK1le6TY5n2vAQekUGGn52QECO9L/OrorM6aqMBuaEGVf9xtx3N7Fn18r6OgOSOXPa
	QMbC4pIBE=
X-Google-Smtp-Source: AGHT+IEYTKLbq7qE2pr8wxA/yckx1iXmo+BlNHAbmHOkOmRXJq652IxDbU9LA6fH4X1E2sL5qKkwnQ==
X-Received: by 2002:a05:6402:2787:b0:63b:efa7:b0a9 with SMTP id 4fb4d7f45d1cf-63c1f633e3dmr12601718a12.9.1760962716133;
        Mon, 20 Oct 2025 05:18:36 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c494301aasm6738466a12.24.2025.10.20.05.18.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 05:18:35 -0700 (PDT)
Date: Mon, 20 Oct 2025 15:18:33 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH] arm64: dts: qcom: sdx75: Fix the USB interrupt entry
 order
Message-ID: <w7jln5k2xaq3iu23v2z3auoychicjgrbpvavsbvb2g2fjk56yq@sramtyump6s2>
References: <20251020-topic-sdx75_usb-v1-1-1a96d5de19c9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251020-topic-sdx75_usb-v1-1-1a96d5de19c9@oss.qualcomm.com>

On 25-10-20 12:13:38, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The DP and DM interrupts are expected to come in a different order.
> Reorder them to align with bindings.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

