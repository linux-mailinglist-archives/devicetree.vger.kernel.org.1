Return-Path: <devicetree+bounces-217687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0262FB58E7B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 08:34:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B82454853CC
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 06:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6760B26B97E;
	Tue, 16 Sep 2025 06:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EI5cctT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE381FBC92
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758004440; cv=none; b=NEjEx1vfyp86xAzK3afy1ld2mvCwHizzIXwCS1r1zPOlq/7Iv1mee5A7rYYJOj1oN8iChQ/OuBkpyowU5WUUWfaADgd5BVKauqfP0ETYVWFVSfimgxNCcK5qZoYmwEIC+2m8MeN7Xyt4rK8YrzkyYlyhVcdHbf0DFV8GNY2i6mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758004440; c=relaxed/simple;
	bh=fPHSiGAaPFD4xb4FsUoKTayjD83CfWGOCBmUyjIJruY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cIDkP+2/Aqc8yeosjKxoSZd2n5KOMJvpEMLwIvBkiir8GtUSe/rmPgSUJE7WI0aDjoJCymTUArdAHmY/eYQU7Ovv57RLefgpUcuuOz9+bQ36l2zmd/i9/7CCXxOU8KA4qxqv/LpwPOK/5h3+k9jgz8riAn0ZQR8AM0PET1EnDAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EI5cctT7; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b042eb09948so1049774166b.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 23:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758004437; x=1758609237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bCcdr8/06mPp/Cx9ptQFN9PXtHrK1LIEHxNLD5oVRjE=;
        b=EI5cctT7CZghMcwUgzKOP2PBUI1pwCeIKp4wlsaU4lA00USPeE3CqLwz87GLhpp9pz
         rzFswRTsVz1eOlfJlfl21yVV11JXD5Ro4vduPDvpLsPKrrJKWwjSrbGEulqXF3l6zwR/
         ZudzO37pEWPReIy2ywVbhUvt47q/HuBprrtbJYisLxK8ByMs23/mypxZJnK9Duqxf2f8
         oIxL3c3Y4hHrYQkgZPttOkEVi+ltN5zBATtOtAgx8nujHtF84p17riIlVXaUJ8klsgnk
         d+B/X9w0hFWLIuip6WTTPxX0TruKmtIMAfl5gKfryS1KkNYc/wjZktgzXonxK3/4uOam
         iLkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758004437; x=1758609237;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bCcdr8/06mPp/Cx9ptQFN9PXtHrK1LIEHxNLD5oVRjE=;
        b=DGbD6IUOvXqLHnqn9MSinINqV5ctrLFKO5zD1Lz+vyD1Eyg1sS+U0AfaAT5V0j5KT9
         eJ5rTAS3pv9fCcHvQhijnQtVLktDRG1FMXxIKECd6YmYV7RaYQeOYR+3I043QCDj59QC
         POIlLc5ui1muAVrAHZhGJKXwo8slRy5cqak5pZIJz5DgUs6bDcqtztSOvpLPYi6SmZmI
         EKYqQBxDQ5qHzpOb/xQbU4OsSzh6K8/GGxVAtAZYkl1Re9ys2zMFSQrn61J0E97GjPwh
         Lp8CsC0Qlg3+XkVUtNp1oBe/Ki+ZY7FJO9QBlH05QVlAnuGOvYGisliQjjlIfTC/kQiF
         JAUw==
X-Forwarded-Encrypted: i=1; AJvYcCWJNRAj1/K7+fDawETr/HOcVykf7z0g5hE39tCnB+IAaSRzfX6kLpNq8r34tSPALCeikc8vwvu+w1xT@vger.kernel.org
X-Gm-Message-State: AOJu0YzaFaUVgPVoelNRqgaP9AzjnG6IfL96Ky0lg5BcAPzx9Xwe/tY7
	51SKrHQUUrwLtDJJPoYRlbrwtbfq4pBnrJ0mDMiMtU4tqnjBwrnPqLbI
X-Gm-Gg: ASbGncsNd+Ci+bn+ehDUH0jgluXeUwomXlrYXmr2l1CRZmw/c/669RLtEq3/5To0FCz
	mJF0v3iOU2h6XpvNAb42PGL8hKspgJtvBv9fvVfffGuFtSdvRc7/REwAZEib4UucI38u+tiIlcr
	lPAR1y10Mgfkv9o0qZf/52NIzmUvVQ1x+gLZbMwzbtIeorpvQHEC41HQn9fZ1fbXfSVc5yCv0OK
	KySX44XXUU4g1DwpFSuXmE5hqf1gONdVAOji552DhH8oDhWsLKE7rIEk6Ru0LvrllgSN3nersB9
	Q3hIc9ayjdlxkgVt5A017+jWL6+/FhQ7TFSoKcMyT0nkNoKtqXsHrdiGVT7IXNsN3BiHEtLUT7v
	RDI2sx7th0k/3p8hXdqsee5DpnDWAertnqkZ2ok9rBwD7dO22wgCEu7/mnzFByotDBf2lsrOB+X
	I=
X-Google-Smtp-Source: AGHT+IF+fZ0EOPhWKNwezb7QtMcy89tdov+B1kADJASBYm5VpHuWXzP2nOsz6AMpKOBcUuOHQ44Aqw==
X-Received: by 2002:a17:907:7f25:b0:b0d:61a0:9a28 with SMTP id a640c23a62f3a-b0d61a09f4dmr735693266b.6.1758004436883;
        Mon, 15 Sep 2025 23:33:56 -0700 (PDT)
Received: from flaviu-Aspire-E5-572G.. ([93.122.248.212])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07d2870da1sm761043166b.13.2025.09.15.23.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 23:33:56 -0700 (PDT)
From: Flaviu Nistor <flaviu.nistor@gmail.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: hwmon: tmp102: Add TMP110 and TMP113 devices
Date: Tue, 16 Sep 2025 09:33:42 +0300
Message-ID: <20250916063342.4436-1-flaviu.nistor@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250915-undefined-woozy-15e27ca89a36@spud>
References: <20250915-undefined-woozy-15e27ca89a36@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Mon, Sep 15, 2025 at 18:18:51PM +0100, Conor Dooley wrote:

>On Mon, Sep 15, 2025 at 08:08:18PM +0300, Flaviu Nistor wrote:
>> Add a compatible string for TMP110 and TMP113 devices.
>>=20
>> Signed-off-by: Flaviu Nistor <flaviu.nistor@gmail.com>
>> ---
>>  Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml | 2 ++
>>  1 file changed, 2 insertions(+)
>>=20
>> diff --git a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>> index 96b2e4969f78..840b5306a8cf 100644
>> --- a/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>> +++ b/Documentation/devicetree/bindings/hwmon/ti,tmp102.yaml
>> @@ -13,6 +13,8 @@ properties:
>>    compatible:
>>      enum:
>>        - ti,tmp102
>> +      - ti,tmp110
>> +      - ti,tmp113
>
>The driver has no match data and no compatible based decisions added in
>your patch. Why is a fallback to tmp102 not suitable?
>
Thanks for the review, it is now more clear to me. You are right, the
fallback to tmp102 can be used. My intentions were to be able to make it
clear in the dts which is the real used sensor on the board but this can
be achieved via the node name (or label). Also I wanted to be able to
find via a quick search in the repo, the info that the sensors are
supported in the kernel, but again, I now realize that updating the
documentation and kconfig should be enough. 

>> =20
>>    interrupts:
>>      maxItems: 1
>> --=20
>> 2.43.0
>>=20

