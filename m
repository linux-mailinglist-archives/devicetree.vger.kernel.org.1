Return-Path: <devicetree+bounces-245863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 93724CB63B5
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 15:43:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C45623018D77
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 14:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC9E26B0B7;
	Thu, 11 Dec 2025 14:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YK5j8pQr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D118248F72
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 14:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765464102; cv=none; b=GIMSg0UcIMHCE1JmSfU1aDsY5yAe9e9vLqaunuvOyHRgb4lJBJFjt/6KRBUq1HuFaybfNu0qUxHLHtXx5dRnSyyt0jFfbImu/oqW+rgQuVCqtQIcuURNoiilfEWQVMZfTRxgtKC3uqmqu4tS0F/zUAcyLLry8GfRGgBF6gLSdUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765464102; c=relaxed/simple;
	bh=XL08wq/Gpmij7q/EVlU3oMvW4oE7BPSYS0rC8uxEoyk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kdxdZuZFrPwfl0F40mlSaHUANc4ThD18Wh+F+knJ0P5DmAQgMHy+BCKPkPBRz6QNdPPhoMz3ulwr8b9OZQah7ioAnL6pL3ZEi3BKJxMhqe1eZPMQGcbGsWK2BzD3TBfaZIvt794NX05Ds4A+DAtuuHXpIop9GxIgrW/cXyNkn60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YK5j8pQr; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-598efcf3a89so161765e87.1
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:41:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765464099; x=1766068899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XL08wq/Gpmij7q/EVlU3oMvW4oE7BPSYS0rC8uxEoyk=;
        b=YK5j8pQrSp19WFlSsShgo5pF1l74Owhrzfy81Qmeoz7jkXoSK+nHX+q1uy1WNzXcfA
         bJYdp9DavVMCNDkxA0802rfW7bVS3orM2QsIQs4mXOH9WmPpGMzS6jylyjPW+ncHq0Ih
         IngGy3QhsyYH55xHt1cEaijdQuWoPUOIzPz+8b8IHKeJcWS0wxkMW/mqmIWLJ2OQ4xN+
         xXEZJ035bT8ciuX1cOXurRCyk3zEUDCwHaxzhHBveslyhv9aNYAouNilUJ5xv1VoQ602
         E/RNghQdGnLXpkXg9LUGpyLac1wStq+KqfKqv50Kfn8cpsZX8Cy39gmAFIRggo9utTNr
         0lyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765464099; x=1766068899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XL08wq/Gpmij7q/EVlU3oMvW4oE7BPSYS0rC8uxEoyk=;
        b=ucYRqmQOJMtjQWX5v7WrtiTawTmPOgHKdodarg02l+GkJnjji7dFeOWrDCPVq2UNwA
         sbu3HnMejOh3WFT6D3BS8kqkFbYON5qng9P4dygzIANHbC5BW8BR7rRLrxlRawiVIkJu
         BEV8SZH29VQi/GpeX1PjTr5paFzADu19GPhTgMd1iAQFU9c2W6hCa4Z123ukVj2+Np04
         jkj2qF3029LitCTRedG4zn8hu5c9nNiiw9oicAJP45D6m4Eq3Tq+Baq/0euTpp2VNb3C
         yTnh44YQys92VuNgZnNMjyWUPTesCpdO8CFW7oIUcOCKvsix7BYIcC+fZHq9Y/B3l/EE
         xprQ==
X-Forwarded-Encrypted: i=1; AJvYcCUfDJ/Jf0WKjAeZT7YmObL2/xUZlQKMLDK4A/3bl74h5Q3+ByhvYEyshj1sdT/2wAw4z27WEVGZgklW@vger.kernel.org
X-Gm-Message-State: AOJu0YywYiU2n23+j61d/sbgGiDAQkBylqOgAIC0gbvWenXz1FlRawqO
	VSypVBCO2mjNlyjv0PkHViphJtMbBHDJuIx+1+p1DsE1XqwudLgCOystzYg3y+VpKl0JPpZ6Ohj
	Zcr2jVPTPmOysw9JBfz4Qr9V4cEEMJDjHcw==
X-Gm-Gg: AY/fxX6iWvkNzmxqetbYqeggSUyc3Op4flNPKOZbJTolX7/T6xc1Zi3bfqFLVpZ6i7N
	o/VGV7pn5PLneoX3Xql81OjrMW/Zq/pN4OWgcjRqQ6UV/2m7KTI4UKTBAJGy0rtF6fSiiLnFRjX
	7GCIyklMHjEZwC6tnwnmkW81Soirm+EYAsOJVUgYJxxBobRRRCBVsl0Fw09KCjCelWrHpDUZkgn
	ddlaTPmSsZmSUh6cN9ch4wpk/ZysfBCY6Uc5gmjFSBENpiW61lDOz7wdUAQml6wZ8e5zdpJBMGm
	mYYc
X-Google-Smtp-Source: AGHT+IFiIR+iIsV4mJ6qVbYZvp4StuXMH2zma5BiBkgrZg+TTdcuperTYP94aUirT3N2xa/3hEPBPBBlokr7QfLebLc=
X-Received: by 2002:a05:6512:61a1:b0:598:f85b:b12f with SMTP id
 2adb3069b0e04-598f85bb2f2mr223765e87.38.1765464098416; Thu, 11 Dec 2025
 06:41:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251207-adsp-cx-fixup-v1-1-0471bf2c5f33@lucaweiss.eu> <d81e017e-e317-402d-a4bf-7ddfa033299e@oss.qualcomm.com>
In-Reply-To: <d81e017e-e317-402d-a4bf-7ddfa033299e@oss.qualcomm.com>
From: Dzmitry Sankouski <dsankouski@gmail.com>
Date: Thu, 11 Dec 2025 17:41:26 +0300
X-Gm-Features: AQt7F2pajj9Y1bhJt30iOkjeSJDSjern_i-FqbzQqEVWSt5mgRNTFkDTUxa7MnY
Message-ID: <CABTCjFBQOq1pmdou_17ZOV3MgTxD_2byAY4RitqPVN5FYdRuJg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: remoteproc: qcom,adsp: Re-add cx-supply
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Luca Weiss <luca@lucaweiss.eu>, Bjorn Andersson <andersson@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=BF=D0=BD, 8 =D0=B4=D0=B5=D0=BA. 2025=E2=80=AF=D0=B3. =D0=B2 19:33, Konr=
ad Dybcio <konrad.dybcio@oss.qualcomm.com>:
>
> On 12/7/25 11:35 AM, Luca Weiss wrote:
> > Some boards (e.g. sdm845-samsung-starqltechn) provide a cx-supply
> > reference for the SLPI PAS.
> >
> > The Linux driver unconditionally tries getting "cx" and "px" supplies,
> > so it actually is used.
> >
> > Fixes: 3d447dcdae53 ("dt-bindings: remoteproc: qcom,adsp: Make msm8974 =
use CX as power domain")
> > Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> > ---
> > There's literally one board using this upstream, judging from that I'm
> > not sure this is a misuse of cx-supply or what exactly. An alternative
> > to this patch is of course removing the usage in
> > sdm845-samsung-starqltechn, but as it stands right now the patch under
> > "Fixes" introduces a dtbs_check warning.
>
> FWIW that's likely a hack (because IIUC it needs to power up some
> regulator for the sensor devices to work) but that's "fine"
>

I confirm this probably powers up devices, because firmware boots fine
without cx-supply.

--=20

Best regards,
Dzmitry

