Return-Path: <devicetree+bounces-143801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B9CA2BBF7
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 08:01:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2CB973A7D74
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 07:00:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11496235BFD;
	Fri,  7 Feb 2025 06:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jQMvUHgv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EAB19C552
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 06:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738911575; cv=none; b=qM5/EAnKBYTBlDKFeBh66brJj5Uol9JQyP2hce/OuqeehbFcLgOuU8X96Rmy621LblYikvAcetfy3D6ynoE5Rhgflc8SjZP6KH2+MKqH01SOeKsJvtqsnkFFa2NtkdOHI3LIlXm5Az7mb6qnYMa/5x0H2GLaBq524w4to3ainFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738911575; c=relaxed/simple;
	bh=6kaouR7oZgNLN17kEeH+Pxk7KmscGY+LGC8DZcas6YQ=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=F+0VEEnjKoOyzgApgvdTu9Lfzp98rsDgUfVu1vqwrKlZ5hJM+VlBgwJnf/RI0hJqqMfPVuH8uWfBi6mP0WcpPneKkNKKfkF4n+93cFhttXcsqtFonode0DSpP85itcYRv5hoZCtSiC1HZ/6H2jFPxgKBUw1h5jiBcMnHl6IH544=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jQMvUHgv; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21634338cfdso42439595ad.2
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 22:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738911572; x=1739516372; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W679lNgXvpPBehgEqKaCNaQXg+NBsATD/PMGTi0DCZQ=;
        b=jQMvUHgvhqshc1UDYlbmrn7hqzKAA/xWfHWqExxrt5kGXZIwAatmqk4K8bxLgf09CD
         BI1of/w7CPPv2OC/bV20MX0bbYP+miLMF3LFD74xrAmheqJaBM+1O3bnkpDcaMXq/Y8+
         iiF8IdWi1XlT05eFIt9/p5K04KuodMeWbf7F0zQ8v704jds+1JU32OG8lZJDvppe8o7B
         4gWcuNNImslOa7CMbEVomrRbcDzfnw55BaxYVl8LmyqUMrJdp1yveAOUsXQzTbKhXHaK
         6Yd1HaGVyZ+vwCtKTJvElFGUS46Lc5MkB9/8dWHmgnIMTqhax5/0790QcNk9n34GHefV
         YN0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738911572; x=1739516372;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=W679lNgXvpPBehgEqKaCNaQXg+NBsATD/PMGTi0DCZQ=;
        b=M+aK1g6DI+VUuYl7sMirRVoqjnRyYNShAoJTBzqOEyROzG1M7qwElYX4FlpwZICGx/
         KefKg9stFFaoD3Sc1q7HSO8fRokhqIJQOeclkxVPTAVw/uUIw4fcESVznBJg7Qf0zNIs
         yyrDr/aoufaKE1WuyrFQl+Jc765Czdf3M8uSuhi+1GBouxGWRI+wT1fk8vo3ga6+PEjj
         Z+hw5nTCaEjmxAQsNZgqJFgUTDMtrt+LFHg6B90qu2I/mvPMK5J5qwD6JyZTPWkc86Ke
         06WZOG1fkv/wY2Az5sRbn0UMn2zPp4QWnLMNxNfX082eADgaDL6o0NIn3LCZpJHiyZ4k
         zkCQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTfkt49mMp0s/09esEOy99oxrGNGCf7PvU5SN42LsKJgCladvEDn0dXa6j4+rE3d2305z0pr/4DhkB@vger.kernel.org
X-Gm-Message-State: AOJu0YyylrWgZFUNG0Q6UgnsASyF7zsIUB1aLsJmUE1VPqBjDVa884mB
	/JHQyMLEK3h1FwfXciiqCX3E+bcDixHwhnDfceqDX3oYc0zDcQOmVuISuTtJRg==
X-Gm-Gg: ASbGncu7lL0VMmljXoi4V3MnQRg1DhlGD1g/L7J8KdcLeBDg3BqiMDu2expOkHCCKq/
	2EEGo8YJeOmmuXZyQvKAUPPggQ2G6sEfvHgSILse4LFv0SqOWWEm1iUAnNjW8mbWyHfGk2oWgbs
	IwldxSIwEoNRstvzvM3FAW7m6Pvxy4AK+zwgUfBOa56SndiM+bzedNe7ni4n1uA0wQ5b0TuqqT9
	jeh9uv6Jja2hhxI374id1Mxjp5FVdAttvpBIc3f8KP+Pls/Li4nqNjxccS3YuTBmHVtayKk4x2b
	RSj2kun1Qzz/KKOuxmhMTG9Y3w==
X-Google-Smtp-Source: AGHT+IF2LpdEJOzHM/r4B4JdjSv0QcjVX0ilM/S1u0uF9+87CF7k8lNOP5/Clx4J5u89poWFyLFT4w==
X-Received: by 2002:a05:6a20:43ab:b0:1ed:a4e2:8631 with SMTP id adf61e73a8af0-1ee03c00212mr4065052637.38.1738911572638;
        Thu, 06 Feb 2025 22:59:32 -0800 (PST)
Received: from thinkpad ([120.60.76.168])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ad51ea79a47sm2226085a12.76.2025.02.06.22.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Feb 2025 22:59:32 -0800 (PST)
Date: Fri, 7 Feb 2025 12:29:25 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Markus Elfring <Markus.Elfring@web.de>,
	Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Bjorn Helgaas <helgaas@kernel.org>
Cc: linux-pci@vger.kernel.org, kernel-janitors@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Bharat Kumar Gogada <bharat.kumar.gogada@amd.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Peter Zijlstra <peterz@infradead.org>
Subject: Re: [v8 3/3] PCI: amd-mdb: Add AMD MDB Root Port driver
Message-ID: <20250207065925.6u7bemyn2aireiii@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <60c5504d-341f-4ce5-b337-1eca92a9506f@web.de>

On Fri, Feb 07, 2025 at 07:39:03AM +0100, Markus Elfring wrote:
> > I don't *really* like guard() anyway because it's kind of magic in
> > that the unlock doesn't actually appear in the code, and it's kind of
> > hard to unravel what guard() is and how it works.  But I guess that's
> > mostly because it's just a new idiom that takes time to internalize.
> How will the circumstances evolve further for growing applications of
> scope-based resource management?
> 

Please ignore the comments from Markus.

Reference: https://lkml.org/lkml/2024/5/20/724

- Mani

-- 
மணிவண்ணன் சதாசிவம்

