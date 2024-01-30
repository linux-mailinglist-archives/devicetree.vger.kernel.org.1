Return-Path: <devicetree+bounces-36622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1089842051
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 10:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C742288CCC
	for <lists+devicetree@lfdr.de>; Tue, 30 Jan 2024 09:59:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C58CD6D1CE;
	Tue, 30 Jan 2024 09:55:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KLHXmXkN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CAB56D1A0
	for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 09:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706608513; cv=none; b=UNMQalSUAxB5Nc9ILJSscaAsh1ogcixtkFGUjD4zAMO0z623M3XlPjmvzt6kk0RLOnmeD/SXg6SK1WWGjrL95MHZXam3kBtE0A2UgHzYD7WUO3sVe8yDIuPIcPizwav0x7mihBtFUGcqHxe3+oEj1xWtXy44uVwfjewi8Bm8jMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706608513; c=relaxed/simple;
	bh=Tj/15moR2w10jZwQnuF3tSWgJxDZKl7rxmklGnSrC80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NZK6mmco0Wt1TitsdIQz+uxHCiq3jp0hy0PLuNrsiAJ3wRzfExy770C7vyFDFNRw1X36KQQJcjbtuO4NLzCpZtaeyG3AUXwxOgUVByazyItfWbowUCoPXbdy80pBd3X+lpIfPky5kmrR0swaBNxVK4z1KRWacdEYmyuIkxV4kyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KLHXmXkN; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3bda741ad7dso3264761b6e.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jan 2024 01:55:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706608511; x=1707213311; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o5bwDiVI2LcVDV0aCCfFOTkBWe1svUBJxyvfkiGmPwc=;
        b=KLHXmXkNHerIQjrGv/nuW2xj4igtngTlKY1asqkzT271PUt0CfR8zglfWFVmhI3gd/
         yhtVTSl/hMg0Bl0q+lS5cJN+f3RCJF94EjZ3Pd0jjF4StIp9yZgCJh8PVIDecsDfm107
         dO775HeOIrfaNKkp8b41UkyOFoW+++rAm0EnJa3j2WAJGpp6r3JXrfHJW64s0aIfDvHQ
         tTA1Eyo1UbZXzOd2rGRGhBXnabYB5zl4O55MBTOsTulg5XsvFu/8MEASqmVuBLofoOti
         Ygw3M5oxL7v+6ur1+Ww9hDpgKxhCcuTX7pc23F9AHf9y2RSx/aprKjiYaIawZktsXnUy
         dpLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706608511; x=1707213311;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o5bwDiVI2LcVDV0aCCfFOTkBWe1svUBJxyvfkiGmPwc=;
        b=g5qn5kj3VV9/NkKAFWaKzihfNjYFWINngkylu/I5VNTW41e/PW+oaPfvglt8AJCIZO
         /GUj3QwPr6Tr4yy7ln+ftYm9CWpAahm9Y/mRNxqDnxAvEXgFhPIWF+vyBf8Hp0CHA15q
         Gl0RIL24MPffdxD4nIKptxcASaHVNHFqrlwHmveauRMA74lb2Q4AIXM8rKlBmn4Dk4tu
         AHp+AG0Vf10nfLqV3tKWNknUZK5LwvhsOOTg3/PqUf7oj3M4tPY/XgAeNWERTXnpMOoO
         H1osb4NAsQOR6/FGkMl1N4m7MdKIRGV7D7JEXz5EPKtN7OMy/dik1p9+bP56nzyqefMb
         9bkw==
X-Gm-Message-State: AOJu0YxKaLcjARn3V4hYD6R/vb0ssPgLgAzlRGm+qN8vkDcP2STE1HxD
	E3k9aRysdi+X22M+UB1pUwCXtVwEZtx13/efM0aXBDJOCeKnkC3RSasmbv9xX4Q=
X-Google-Smtp-Source: AGHT+IFIL/FUSaT+nOB4gtb8Dc31YwxMGmOTUqyGtWgmRSatuHWZsAMT9PaS6veY48NufzEaagJVRA==
X-Received: by 2002:a05:6808:1688:b0:3be:2e97:f758 with SMTP id bb8-20020a056808168800b003be2e97f758mr6845291oib.43.1706608511096;
        Tue, 30 Jan 2024 01:55:11 -0800 (PST)
Received: from localhost ([122.172.83.95])
        by smtp.gmail.com with ESMTPSA id l12-20020a633e0c000000b005cfc1015befsm7733824pga.89.2024.01.30.01.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 01:55:10 -0800 (PST)
Date: Tue, 30 Jan 2024 15:25:08 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Krishna chaitanya chundru <quic_krichai@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Georgi Djakov <djakov@kernel.org>, linux-arm-msm@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 5/6] arm64: dts: qcom: sm8450: Add opp table support
 to PCIe
Message-ID: <20240130095508.zgufudflizrpxqhy@vireshk-i7>
References: <20240112-opp_support-v6-0-77bbf7d0cc37@quicinc.com>
 <20240112-opp_support-v6-5-77bbf7d0cc37@quicinc.com>
 <20240129160420.GA27739@thinkpad>
 <20240130061111.eeo2fzaltpbh35sj@vireshk-i7>
 <20240130071449.GG32821@thinkpad>
 <20240130083619.lqbj47fl7aa5j3k5@vireshk-i7>
 <20240130094804.GD83288@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240130094804.GD83288@thinkpad>

On 30-01-24, 15:18, Manivannan Sadhasivam wrote:
> So you are saying that the ICC core itself should get the bw values from DT
> instead of hardcoding in the driver? If so, I'd like to get the opinion from
> Georgi/Bjorn.

Not really. The drivers or the ICC core doesn't need to do anything I
guess. Since the values are coming via the OPP, we must just use it to
hide all these details.

Why is the ICC core required to get into this here ? ICC core should
be ready to get the information from DT (may or may not via the OPP
core), or from driver.

-- 
viresh

