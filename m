Return-Path: <devicetree+bounces-207843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFF9B30F93
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 08:52:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7B61AA02B3B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 06:51:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461192E6138;
	Fri, 22 Aug 2025 06:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EksWfMZl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFAB2E5428
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755845484; cv=none; b=lDzOucu4cevNc/TisoVWRK6jtz+Ts9MDah/j25PBxMxx2bofnt6J5oaHYxqf9u6H35vjhX3i//h3d26mRupKcQUjqInbzMMMXJnfwmVu1PT+g6fT63TyE9u9nPduQJsPbGz1/GV+4BTJ1ODT9rpiwRXpe5V6nc/lTWIaFYAiBJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755845484; c=relaxed/simple;
	bh=w+fF5jilwCss3OzaglG2MI9XKzVq/OKDUeZWYv3d5Qs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K7P03VXegMSJOfDJy958J0h4pwOX28g7dbP74bOWuzNVX4NnxEP3O6/xybQBUxjOUapZp/lcLkzN033mnQiY7JtTKTMXHhZ2fO9j7moOhyMgyleUX32M6++MSHbswgpJUIaYlng8shDNLwgyBVn1sYl4CwGWL53JHKdjydZK/Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EksWfMZl; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2449978aceaso12643155ad.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 23:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755845481; x=1756450281; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wnWlGVKFdFIBt1j22TCSqfwegODnyLKYBcy7SHn/za4=;
        b=EksWfMZlgr4e5ZZThYERWiBQ7aMeSuPlEUg2Lbwog/Po0WjlUTyewqcU0wAuE23gS0
         YaXbNNe3hoGrMgH9pE+x98EThdmcpXDbf4ZKlyClWmW7va0ThDh4ljLFhIyyGSl/lKkS
         okjFw0PmAnlvexeq6aeqFl5r5euYi+8FL20H9JAP4SD/M2pJQEXDaqVPo2UQMf0DyBaB
         shYCg8xsZn0xEyiqn3ZcbD8GQvp5GFvrnVuHcebM7j+Dow10jOmvA6zv7s0HHes3fKmn
         mFNNHJKJaCxP4txRNdhaGi5RyK/6O+P0K+CB0f0blNOnb96aSHRRerAq55B6tjUMPYt3
         x95Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845481; x=1756450281;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wnWlGVKFdFIBt1j22TCSqfwegODnyLKYBcy7SHn/za4=;
        b=a3uEn+MzhiACmJpmcseys7jsy0rPlgD2p4IlWDHT1gOedUih1+TtCHk5KC6Tx2adUr
         kgHX2ETK7fWzqSJjJv8571iRGuRb1H3S0S6cYtoWOTwOUlPfqVCxaodJKnHF4SPFvZvc
         GKe/rMULiO774dtDcF5/In4b6ytc01x8UP5kXI8vF1N6a8VYW9Z3K6I9TMHyAawMIiZa
         BesDKOg9Gani6BBBwP0eEZbD4dZaMl4gSYUxOiWigPwC3UZqipD9hFYOHM60ShIRlDLM
         v/omNxxKgI2UEBkLBtI3VXCxwVzelVuBCl/YOJ+Ok84zAPoq2oLe987ow7K71WOlVh3r
         OZ3A==
X-Forwarded-Encrypted: i=1; AJvYcCUvxRt5pr9Qevw1A4CEgCbRHweUDaHnBIuGbRJ5wNyrn7E7xptR3nxPWwJprafo43jDtO1kK1y94yRH@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8jM69Kp0gRyJUIPB9dIB8TjhzRMUknV6ZMPjxyz44a18YbeAW
	Op0dZ6m9z2xZvA41Tw+jkSR4MJRjPrgbaQKnsJK6U5Wgfho4aMh4RaeITvFFrvrx9wI=
X-Gm-Gg: ASbGncvAjBlzamSylvK21N5Zn7Z7irYPWAeaQBNIQYW5E7QMB4Znwq8QR3wt4B/MxV4
	DgHQz/8pYz2ShUkLHTjl8DavV1UYPz/yJm/G6CETns2OBbgZON8bFYLQPxGi7BUHF6dRoVIS/4n
	DJMTc8PHRtLXekBcKny+Aedo6BAX7dc1wG8zNErjh5boPXgmRB0HSH24BFyDDTbhZzUftkZrqHr
	0JPk5M01sam5402fj6EEIvXK170SzTBcL8WCipw5FtElLOGV2JhlxRQ6fuBzXOCoj2ZsawZUN1m
	m+ThlO9hWRHomLzRN7eowsoZZvU6rfQb83nXkst1gD/mzkpw7qXuwyy20hff7yIlm7xW6/gGRjA
	0N/IxOogAZN86CflRwgFjZs/y
X-Google-Smtp-Source: AGHT+IFuWz2fYkZGwCki5RHEZnzuVzd/HPxt47eh+hbJsFpZ62hbUXT2LVNh+1RDFwpb0mmLfChYMw==
X-Received: by 2002:a17:902:d607:b0:246:441f:f111 with SMTP id d9443c01a7336-246441ff47cmr14160665ad.43.1755845480880;
        Thu, 21 Aug 2025 23:51:20 -0700 (PDT)
Received: from localhost ([122.172.87.165])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed4c7489sm74182225ad.70.2025.08.21.23.51.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 23:51:20 -0700 (PDT)
Date: Fri, 22 Aug 2025 12:21:18 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/7] OPP: Move refcount and key update for readability
 in _opp_table_find_key()
Message-ID: <20250822065118.qktpqaudc2uhgzdm@vireshk-i7>
References: <20250820-opp_pcie-v4-0-273b8944eed0@oss.qualcomm.com>
 <20250820-opp_pcie-v4-2-273b8944eed0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-opp_pcie-v4-2-273b8944eed0@oss.qualcomm.com>

On 20-08-25, 13:58, Krishna Chaitanya Chundru wrote:
> Refactor _opp_table_find_key() to improve readability by moving the
> reference count increment and key update inside the match condition block.
> 
> Also make the 'assert' check mandatory instead of treating it as optional.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/opp/core.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)

Applied with:

@@ -554,8 +554,9 @@ static struct dev_pm_opp *_opp_table_find_key(struct opp_table *opp_table,
        list_for_each_entry(temp_opp, &opp_table->opp_list, node) {
                if (temp_opp->available == available) {
                        if (compare(&opp, temp_opp, read(temp_opp, index), *key)) {
-                               /* Increment the reference count of OPP */
                                *key = read(opp, index);
+
+                               /* Increment the reference count of OPP */
                                dev_pm_opp_get(opp);
                                break;
                        }

-- 
viresh

