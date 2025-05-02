Return-Path: <devicetree+bounces-172872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 05844AA6C5D
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 10:14:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BFD17A69E2
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 08:13:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7950B268FDB;
	Fri,  2 May 2025 08:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cyowpTXs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E6A267F59
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 08:14:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746173647; cv=none; b=cmsHwQsJLadYBF0zWp8zMeRP3l/yRI9lB1FN+In56KMYvPcSmX1kBsuoY+rmEJDHMrlh3YMEfkI2b9MaP1HLTbe1LtIYGvo1gIn7ikbADWLphiTwr1+8YcgTp+dfnSBma9GFFQ+gZcWSY62eGed9gzYmaehTpot1UNzOJbw/6Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746173647; c=relaxed/simple;
	bh=Jn4eWjXxwsoqBV85M6GsL2+wR4fJEbwSADRw9jJ+1DY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hlqIPYnA1OES3EWd8KBSzfTLmX9GnrgI7Elt9Ftxem1Jo33uTjLGgZt4LhZ0xMhJpOhdVcMe74itbz4Od2EJC5mV/UBqIl35eGOmAINU0YjxUF77ADBju8YGV4q9DFlUClxaw2RZjm/E9E6czlTpQaLLGVWeeA1dbTiAxcbNQOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cyowpTXs; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-22c33e5013aso19651875ad.0
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 01:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746173645; x=1746778445; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=h9CBhyGDLFpnb+f5rsG3NlbjD1cjKYpOIM2q4JdOS8g=;
        b=cyowpTXsjL2zxgXj1XI9wFYIcQbYM50MxhVTzyX8NC0B+biSwUCQoEw/2/7PU7gmmT
         ulfpw+sw3Ksga/mX6qR488sb9jAWWjSjzsCR/HhV7RJZrDceLrm70nGFXJcqu1+aqc4N
         EyzE8iETxmM+ltSUuE1Z1IVFyUdO9Vb33q5S08qujdsISd+SCvKoh17ShR+vLDM8FB2a
         J85AdBGX3BQ62EKhn0g+NKVAAenOd9JKh/FwaSm61XGWX6ZsKZExqaxa7RufTWop1iHA
         ltXBlO38NIPjT3/X3nvWtwHbsBc39MzxfZTEquBG+HLixgGqRtNonldsuXPWi+wDx6Jk
         Ne/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746173645; x=1746778445;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9CBhyGDLFpnb+f5rsG3NlbjD1cjKYpOIM2q4JdOS8g=;
        b=PhkjcxWiDJsf2ruquWY1ERtNuORY2hOxy6wtAHNmjZWQvCdUq7xXhw/2/diTYXMvOw
         9lhs1/8wbCcX3Ok3s8aIaxH3ZPaXQdrMWmbziI2p2+HNdxmHqR55wzcgBjr1WWEDCdYj
         woRrxYZ1tTPMKZLUaKhwB3+gVODoKWVKOFssENRfXH6KFuDHS/B9KwFe1E/Ey2v+HL+w
         EeDQ5QtvYziDUefEKR9Hw3oC4rvbe9vXZo+cRC0aAeQcPe4Rdhz803yNeib/BBF5dCVt
         OpPkQe/ID7Mbi6+wzxQa5zlmfGhwcnbF01Ue1E4o40XJu8yAEsZpZC0GunDuh73eBYrw
         kaYA==
X-Forwarded-Encrypted: i=1; AJvYcCX94BxZOs7lg6my06TEl51blQbps3jqQYvu7qqQF0e2yoK9+bNJ70/ALOsx3oDWD9xBk4MIgZ0STIf6@vger.kernel.org
X-Gm-Message-State: AOJu0YzsIoCfhB7zkL3gj0llPSlhJpz5kYT1xt1PiovgXFE5d/xuNIy9
	SKPTRPQbuObTzGB23lJ0BLiyvJ10i4tsF8nBJxX6YvHDSqZR4hAHoGnZW34lVak=
X-Gm-Gg: ASbGncuJLjT9qxFHO90qlapNOc3ipZ9IHT1af+T1pk9UQTH2UdX5lgog1zczo3V3buF
	RkSxufs3RjpVjL/LTZBDgnk0YfzJll8kyniKH7ZH5J9ZoCL9YgEDopKb0ZweeB3gxOfn5FySBXm
	igyGKUV08wBeFAywUqWMp0mgI/tWUT0W4HiQFQx4Y7LWlTvSOVqBZ2PnCAFT8F3salblV/dNGwb
	l+29Mb/rKn3FrMQmuXw5afY6eDrhtZAC3iu9OfmfzaZWQk+E2aUdAuR6GnrhyGpjOdTB2xWubNN
	F6WHVpSHBvQBkhBUnR6f5l6eKzhgJzHBSMDIlgcqCR3n2c9klRjq
X-Google-Smtp-Source: AGHT+IE8k2uHCd5vOWDOxwC36pkdJWkb0CZOrK041eLixQ2GEf6iz7bejpQdIdbRQPU3r3GiD0ut2w==
X-Received: by 2002:a17:903:3bc7:b0:223:f9a4:3fa8 with SMTP id d9443c01a7336-22e103571b1mr31592105ad.19.1746173645117;
        Fri, 02 May 2025 01:14:05 -0700 (PDT)
Received: from localhost ([122.172.83.32])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e15232224sm1644065ad.253.2025.05.02.01.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 01:14:04 -0700 (PDT)
Date: Fri, 2 May 2025 13:44:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Praveen Talari <quic_ptalari@quicinc.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org, psodagud@quicinc.com, djaggi@quicinc.com,
	quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com,
	quic_arandive@quicinc.com, quic_mnaresh@quicinc.com,
	quic_shazhuss@quicinc.com
Subject: Re: [PATCH v3 1/9] opp: add new helper API dev_pm_opp_set_level()
Message-ID: <20250502081402.yjagnnjrfva7u4cb@vireshk-i7>
References: <20250502031018.1292-1-quic_ptalari@quicinc.com>
 <20250502031018.1292-2-quic_ptalari@quicinc.com>
 <20250502053758.utawzhq6famwenc2@vireshk-i7>
 <8ba02745-378b-4264-883a-b99764701d0b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ba02745-378b-4264-883a-b99764701d0b@quicinc.com>

On 02-05-25, 13:31, Praveen Talari wrote:
> Shall i keep commit as you suggested with your SIB.

I already applied it to my tree. You can drop it from your series now.

-- 
viresh

