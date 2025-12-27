Return-Path: <devicetree+bounces-249892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC30DCDFFB7
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 17:55:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CFCE83032FF1
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 16:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A3A2325707;
	Sat, 27 Dec 2025 16:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QDhJKqxm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f43.google.com (mail-yx1-f43.google.com [74.125.224.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090B3314B73
	for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 16:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766854412; cv=none; b=RoTJjAs77SHS54Ns9ahzURf4TrgsWkPXVoIV7s3zow0DTv0enRHU/H+xqtnqJOoJE3ICIgTB9kjMqqKLZm76vV2e6tjZ8xRBZQy0awv7VQYWJeZW9T0o74l86UYBEebiyhBp0y3+YwTfkNG6RbeQD1epyJB4t9GWQdzDMxi8JXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766854412; c=relaxed/simple;
	bh=gu4P8yCtGv38ojTrodppXUMSDmAq3ug24zzKR6LldJ4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=UJeohn5JPLKOXgvSID06C3cs+yex9qDWRiGh1p8A80M/iYbHgyX1AptGFUdL1KmkxMX8uhObnnilFl9Cio6spRs1u+iMFnsa48mP/E7/nECAJFK+gKmxYUvjUhuDkAWm3UaySN5YiIgYkZd4hwjB6zNmFvv8llY3eTOkagd+8U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QDhJKqxm; arc=none smtp.client-ip=74.125.224.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f43.google.com with SMTP id 956f58d0204a3-6446d7a8eadso6556897d50.0
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 08:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766854409; x=1767459209; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gu4P8yCtGv38ojTrodppXUMSDmAq3ug24zzKR6LldJ4=;
        b=QDhJKqxm7FEZ4RFnti2R6tTqK7hH71vHV/VblwD6XBiZr35ArhxkMjygs3OtTmFvtm
         GQ1AmgwfSWQWL+gElq7vwkuZxf7q15KuUdqRblWZHBa5u5182q8C7A4C2XA4t6uzpKVX
         +pNd4dtyEqS+H4yN0jP/nFje92W/Rymy9ExrCqlaR3XpzR80zooQy6x8VpCA23ZD4qYf
         s31Z59m4lqS140QE9rpScOvahBnTZ1C/ToyacjYxwYseGZDw31pF6UDbPh3V7QuYIDxN
         Qujj3bknKQuzHI2l7qf60TMVrYFbmcw4wq7t6uSL0Ohv3827R1oksyZgH0fG/ILY6khr
         UNNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766854409; x=1767459209;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gu4P8yCtGv38ojTrodppXUMSDmAq3ug24zzKR6LldJ4=;
        b=HrjBBSVqkigGXCA98rUtYXEE1QA/BmTifgOcWZsVhEkcqTpg7qSEptnC2wiOzyDTd2
         FBUSl3vjVKeAUljz5zJnty33AxxmfM3EyRgxxO/t9sSN+iarZZUIpH5tcnpvb2MBcxN0
         Z41gj9EujqktzWNeY8t89faIw74YhQwxOKBuTasGQnOrE5SjlyQHlnog94XBaRk79aMn
         r0gkqKIrWYo58ubs4qXh/OF4qS/CHRFNi6zdRglZThGZffYwyefgxRK/jX7R1chYekB+
         d2AxLowhsPjbyBZkQAnNgSrUs3Onzkp3ZVMumZVp0zCU/Q+eGOZ8jqa56OzjyM5NPPeN
         6iVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUckNducfK7gd/+C9Bf6ArN1JreeoGYb1KbuX4+4+JDjcIrx9y2eQdc6Pn+tOqDbxCDHU3ADmQxCmtA@vger.kernel.org
X-Gm-Message-State: AOJu0Yw91Iz8I3PnPzDFQdiIIwQabOX6TboymewEVNgXlzzG5J5YfQqj
	WTzsaPAUw+7BQRb1ziWFT28hYuvMUrL0hvUzGk5I7s2cTdmStjmGFdYyFdf63aVXPC+dS7QqP8B
	T0gTMcpp6+r3JOiZqFTzLwOmChoUSpew=
X-Gm-Gg: AY/fxX74sTRcl/1yn+nmVM+W/ePsaIiClSGJF94X794KkySZu9UXwWj+5Etg1rOFT9l
	+/oWrWabYlhtMP6rCYIAZpq78hmzsGNVNJY5BRZzeRQ1qSYA2YMDI89Pn7LdALikuWf3T5qgGTz
	c7lZZsZTgj5oiewFsG799XzQApBLNjmK/wi7L8UBryQlcr8/pb2FMCXOF4KxFWeLY9TQydcJNBJ
	5RNobtPawnMzrPW98uw+cXaOlScJMIHdI7sOJvDzowJw6jlLfC7o9JojvVIS4O2e5G+
X-Google-Smtp-Source: AGHT+IF3Ar92THam/YBoDFLspVYsbTbaPEn4UDgIjGwlo+OzDwvfQfbc5kNYDFIO2HEklpYYD2voIBzsATqCIeii49c=
X-Received: by 2002:a05:690e:ec3:b0:644:5d3f:844b with SMTP id
 956f58d0204a3-6466a8a89d6mr15524495d50.54.1766854408938; Sat, 27 Dec 2025
 08:53:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <trabarni@gmail.com>
Date: Sat, 27 Dec 2025 17:53:18 +0100
X-Gm-Features: AQt7F2qYKWCD4_nduV_EbKeCZVZL2BRsDeJglVK1M4bYvsM7D9xgKCVpKAP_4SI
Message-ID: <CAGsSOWWMO8+8vB2EM8s1=hyN1raO6TDpqGBTdrmNrZpfDfn5wQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: dts: switch to RPMPD_* indices
To: dmitry.baryshkov@oss.qualcomm.com
Cc: Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, konradybcio@kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Rob Herring <robh@kernel.org>, ulf.hansson@linaro.org
Content-Type: text/plain; charset="UTF-8"

Hi,

MSM8937 and MSM8917 MSS would need more power domains like MSM8939 and MSM8953.
I am planning to send modem related changes soon what are interfering
with this change.

https://github.com/barni2000/linux/commit/21151cb3d07124897e4d3dad51c833c4af27f6e0

Br,
Barnabas

