Return-Path: <devicetree+bounces-151824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D4BA473BB
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:49:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 445061887E6A
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 03:49:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D19E1D61A1;
	Thu, 27 Feb 2025 03:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SvHVlJ3L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69AC71898F2
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 03:49:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740628145; cv=none; b=COiQLEc7KRrT2vtzdb8XcGdWU1PSUmk05ihg2vFh7TSedz/2cD6HyMlBPZ5EZrrFghhKgPvf7wj2uFb5UDW/xVUc69XDYsV4G3Wq+OMWex+Q5VlB+kTdMiSb4oXsZ9ekrD3YxEN9s9C4pOJwF+CGrAbIomCXnoZ6oSAToCnRhiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740628145; c=relaxed/simple;
	bh=oi+m9gpixAFvi5EpPAxx46lrS+MPBn6RaE9ZtWVWGk0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=omLQA6nJLt3jneGHBESVMT3c7rMHwwjvXoqRZvEIqBijulvjdVqoDnQD6nilAokJ7kUn1n9tqgNzjSuybahTmyA+LxKHYIPPNaiJZrQx1c8Wjba+p1PGnZNiscSxypaJ7Ae63F1xYEdYLV7CpjFyoKoZHz7doi9LV/wGknsaCVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SvHVlJ3L; arc=none smtp.client-ip=209.85.216.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2fea47bcb51so676759a91.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 19:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740628143; x=1741232943; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fO7EiubiHLOGU2rtl1Xwvp+D0Vg5HuoflpxbDTrARsY=;
        b=SvHVlJ3Ly9dVJSOgV7LQnsnZ0xz/4RsVIdbRfTeKnV4EV8FgkJTJlxBoZlvnr6vVPc
         jBKtpqnaOTxv1C8idIq73c7Mj654uEbgSjnqL7cPAPF/f0W8llGI2G0y5ATlxgFgYZjf
         NK9hSmnzzlolk4N+1j7SW74o1Akzx7Sy/Vj8gTCnodCKMajfoyhwFMI4n8B8vd5HEiKm
         BPOJBzQt8AozMQu1ewueWKqQOP58K/+u+0upXbKzbiNiZs6WiNdPIQrR7fRgzonkk+Xg
         lYLjQ9QtRwihutPH9zIcIUynyPDK7qIAsANBT4bq1lSONlGqTAYYHKp1bmIp2uj9HhhE
         RqyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740628143; x=1741232943;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fO7EiubiHLOGU2rtl1Xwvp+D0Vg5HuoflpxbDTrARsY=;
        b=thuHQBzhFBRc9j40XDksZuNtZ4EZ4TxjNlG0tLlq08sKb7cMclaU+HTjRTGRSIORto
         2ek82iMkN1Tv8tvsUZB9V6ldYacpid0J8HlbCPpIWdxN+MxEhNFaSBpURShF4a0rZs9U
         cwImlHsSZOdTkmjXzfZoB3jEDELj+l+p7pNjt3ZQ1t7NVtvbG34KN7Gqd+SvXNxYzFsD
         yKYTBWtNeh9Qxu7njufdOF021saklJHPkyDXw/9C1oJmrZSpxFWiN1b4ZJnI03E3kMto
         DawBwgnLOknlzPX7LdcxJzliDdXE10kG/fsm0c10J61z2ORB2lvIcz33MMbLgKkTBLw0
         kJQw==
X-Forwarded-Encrypted: i=1; AJvYcCXvz5EgOeI9P0TcT8DZkLFBx/iMj+myu9urgpNH3xJDJumXL5dbIwSEB4AMZsqIN0TWu/t3DfFaLDO3@vger.kernel.org
X-Gm-Message-State: AOJu0Ywi/57iv+09Ud/yY3f30Qqg++ALq66wUre6I+WyNLGR2LmEY5f3
	Ukrj+0/K3FWd2gL55fd4mv5wzvaZJBuRrSRLIfqF0FafQqWQYQyvO1YfhQtg3g==
X-Gm-Gg: ASbGncvVkX0V6xjaCni7jxlUieIe1euWqkiYzq01Hdq5N6P9QiGqV7/Oy6y8cam97fG
	aeHgU9dlKiuDdbwjF70gnmgBVPTe81htN0jJfcfEfrQxXgPrtedwasEc8w0JbE7Dkx2U6N/J5yY
	xAqKEo2a/G+yuOzQM1hnJE20suNqa3Zlf9RtC03aURz4k45UZc/F7pae3fBt0B+6Z+Dk68GqZ/J
	tbM13pZEg6Zi0eH7Eq6j57Y0X7mANGmTzWX0w/OKT9izIX89gzCZBapJZQoMut0MOfYl5GuwHsb
	kfi6SNO/8S2pjIozBtESAJJjI79ybxKyF5Wx
X-Google-Smtp-Source: AGHT+IEcysD2mq0oTW6yavadIZ+Dy03Ac/OJWfv0J/mF/FDiTNU3vFb7Q5X25mkxRJS7teNSdDqlAg==
X-Received: by 2002:a05:6a20:2d09:b0:1ee:e2ac:516d with SMTP id adf61e73a8af0-1eef5560808mr44946908637.30.1740628143509;
        Wed, 26 Feb 2025 19:49:03 -0800 (PST)
Received: from thinkpad ([120.60.51.181])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-aee7de1a4ebsm278779a12.23.2025.02.26.19.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 19:49:03 -0800 (PST)
Date: Thu, 27 Feb 2025 09:18:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	chaitanya chundru <quic_krichai@quicinc.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
	amitk@kernel.org, dmitry.baryshkov@linaro.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	jorge.ramirez@oss.qualcomm.com
Subject: Re: [PATCH v4 09/10] dt-bindings: PCI: qcom,pcie-sc7280: Add
 'global' interrupt
Message-ID: <20250227034855.orrwu32mlnn5mjfk@thinkpad>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-9-e08633a7bdf8@oss.qualcomm.com>
 <20250226-enlightened-chachalaca-of-artistry-2de5ea@krzk-bin>
 <t34rurxh5cb7hwzvt6ps3fgw4kh4ddwcieukskxxz5mo3pegst@jkapxm6izq7p>
 <e83bc594-5500-4f76-b3d1-96f669515c24@kernel.org>
 <dd16f56b-f066-44b7-b5ff-baf608e0f87e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd16f56b-f066-44b7-b5ff-baf608e0f87e@oss.qualcomm.com>

On Thu, Feb 27, 2025 at 09:09:38AM +0530, Krishna Chaitanya Chundru wrote:
> 
> 
> On 2/27/2025 3:03 AM, Krzysztof Kozlowski wrote:
> > On 26/02/2025 17:29, Bjorn Andersson wrote:
> > > > > @@ -54,7 +54,7 @@ properties:
> > > > >     interrupts:
> > > > >       minItems: 8
> > > > > -    maxItems: 8
> > > > > +    maxItems: 9
> > > > >     interrupt-names:
> > > > >       items:
> > > > > @@ -66,6 +66,7 @@ properties:
> > > > >         - const: msi5
> > > > >         - const: msi6
> > > > >         - const: msi7
> > > > > +      - const: global
> > > > 
> > > > Either context is missing or these are not synced with interrupts.
> > > > 
> > > 
> > > I think the patch context ("properties") is confusing here, but it looks
> > > to me that these are in sync: interrupts is defined to have 8 items, and
> > > interrupt-names is a list of msi0 through msi7.
> > 
> > interrupt-names has minItems 9 in this case, so they are not synced.
> > That's my concern
> > 
> Ok I will update the minItems to 9 as suggested.
> 

You got it backwards. interrupt-names should have minItems as 8. Otherwise, old
DTS will break.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

