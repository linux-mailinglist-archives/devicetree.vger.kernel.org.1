Return-Path: <devicetree+bounces-212847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D50B43DC4
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 15:53:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 948B1A05709
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 13:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CDA7307482;
	Thu,  4 Sep 2025 13:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jzt+qBS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD242F549A
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 13:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756993961; cv=none; b=JwKOGEF3GpAa8cEOnUxW/09z4O3nuxjw8GnVRTJaQwegwmO7goZriyodqaLYsFLCv0WRCUzvRaChV036MfKfu8YeLO/wkGK1Meb7u7u6CL5CLb/vvwB+NnZzhlb6WTcpBb6qiFKa0IhHjA5ZtLxOHIboYVdwy271lahFQPiwTJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756993961; c=relaxed/simple;
	bh=9OyuXFoikUze6iRWh6hvxuXsda1F47fQwg6MwRKMDeU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RmZKavLegfV752H4X0b1WCm/pEDSqwgZoAy7umAJ5OXSM+P2J/7eO3zw1Ck/geZm2whCX1a4N8t5U8+m/nYumL4d65f+Rj8MACO/F+6ZlnqzhQMbbrg87h9AMteUTafzP+kuc3+TYGokgJWJKa432lxkVr+NacaKUsILesRoZWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jzt+qBS6; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b0466e52cb0so12720866b.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 06:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756993957; x=1757598757; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1/O5WymKvy45r1vh7vnSWJll0BQnRQOAk8OWDprBhA4=;
        b=jzt+qBS6ZN+iO5ey9JJty+TpSi+TVF/5bOFPciORkpLvqhgkHjyVIDrsx+DAvb+DmG
         28Lh7p1aOlzsfE/W5AI2bN2zdJQyeWyBARmXdVd2L7yn8L6dv28k16QBX27phjJwcLFW
         EEFlMXFMyXBmtY5wztxwhGgDr0bxt0HARNhAB3CurWbQOk07poucmM+z8PTlFHCypIdo
         m3ZGRqWPV5r1ygtmeOmw5++lEfCkkJrBu6qHTmAl+2En0uFtYx2hAUxGKxgRVWjSxbKx
         UC7IWoOQmIIXy9hMlmbRC0PcbVla9YhTQ3ttbNqBlkxiMZ/BFdtiGv4q2AKrX651mv3w
         J0Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756993957; x=1757598757;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1/O5WymKvy45r1vh7vnSWJll0BQnRQOAk8OWDprBhA4=;
        b=VaNSrrKot7hOnZs04wGGLKSyabILSRJDWku+IsVijXVna5EjMJfoZTis9Dv65ihlNF
         idlR8PosGEr/mb4ENeucZ+voHw0i6gd3eNSWNcU+5s0OewTKnZv4O+GVUPIj04ISZb9l
         p1HPpDojluGzSMn/O+hxsq7On8R8l6fuTVOWx6ZYL1/ijNWHXslmdyxHGm3NUpKNxert
         lBfuL8Bg6N+6jZ4jrrFlIkNg5Xat5/p9rzvLIRhEB020U/w3fG9yVrk9FWxZy5dfcOG/
         kWczswG3VBMju+yNrPt4uPff83V0bfK0g53oriTXge6ccCgS20Dn4VIEIpU6lqY0+Jh0
         qGKA==
X-Forwarded-Encrypted: i=1; AJvYcCWNsups32r5s+zX5SNT9teTjUIpJP+xsRpj0Fb212bkY/fKsrUBMx8DFcP91v0BfB9Su10uoPBaekat@vger.kernel.org
X-Gm-Message-State: AOJu0Yyx2dSKByleERvj8dtVbfOHV6zm3t7GaTs3gF/XFKC8UOt8deow
	ykQbbnqFyKhDu0b4XsDCrE+qG4q7TrMk3xud3WPrDcGFTq2oJWKgpv8C8rLZC+mVQBk=
X-Gm-Gg: ASbGncsV7ItEmFKy/X+7PUg/xZYu3U5gOtFCKA75dFVSd4g8HHsQwtemZxJWCd1yRf7
	qccD3RV74m6kiy1wLPGv2wx0/r1tvltreYUMbwv3d5msvZPK5wSsWqdGcLRAF15J54A8apHoAyp
	WHo4GX5V20VT5EnlGNWjkNjtOyNIc+m6WjMJ/i14JGqZy9Jy1ed/rB0VyE3TMwJovRrz2VyS+dH
	+98jSH0dPrWePFOjQIenYmLvW1AYVOAkR79v/Ds3V3ANlO3UBGxotIgDeX10n1bvPuwEkijZWNk
	3nBRhB4VKJRZk8uTC0p5d7pv5GuLVPJPs3lK56TNmwoG/VE6GoVCpsPVoOJhX5bekcJajjuiZ94
	8F8kmc02dTkpN9gQZ+++AzjLMMROvasSMwQ==
X-Google-Smtp-Source: AGHT+IGO/jP66hc+QzmqZktfflLPPbS585G3h2uRdcszswRnmdp4VFPLr9epjd5HozsUrnRGrBUtsw==
X-Received: by 2002:a17:907:94ca:b0:af9:6580:c34f with SMTP id a640c23a62f3a-aff0f132f63mr1049358266b.9.1756993957480;
        Thu, 04 Sep 2025 06:52:37 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aff0a591819sm1510983766b.41.2025.09.04.06.52.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 06:52:36 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Khuong Dinh <khuong@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: apm: storm: Add default GIC address cells
Date: Thu,  4 Sep 2025 15:52:30 +0200
Message-ID: <175699390853.173213.796992379673789979.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250822133416.312544-2-krzysztof.kozlowski@linaro.org>
References: <20250822133416.312544-2-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=1047; i=krzysztof.kozlowski@linaro.org;
 h=from:subject:message-id; bh=HjS+2aSLkdgO8DPIAOXjoQsgHBBF12+j/hxq2KCEcSw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBouZmeffAgG+/S2nRswSV0QwohJWiwLaS4t+lQJ
 mou6Kn55tCJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLmZngAKCRDBN2bmhouD
 1zaJD/0SbgtFJWUKyszA6b4WB2/O/ORvfdX6C8mqmkmOn67+xeFrG5PKNkEmRa0BEoS7ByOlS7P
 MQElqUywgbycPthaey9WNKLs08/2+5wbMWxTGajSWJL/woNfRmeGyv2Cr7SUqgSkqljUNq32DEO
 AAheyGg+NZPYT44xCQEnIB8OYvBoQxlZk7qbZkwao6H9D15eVD/wHHvndeZ/IuGc01ub4RG7QsR
 ICaFGBtipnADEQvdDa91hBO0uZAf5nUCddOrV8/+grlR0o68gQKUD/DWPNd4tu3y6hQ1K0c5oW5
 TB1pu0tlRTg0nBCGKJgv2rlSVk+yE7uDqBUlDtY8iKvSIgHhLjXQtzESyOAwxZn1GO+15idH5yl
 I1v3jlB9IQaC+bY7g9Vo0wydWcPb5ILi8mH2xLyJCoDZ/RAhP/Rz3DtoMtH/fpWYZ1PnBiXFwf2
 J7NVdULav4MnqCW0qv/hEACo0VCy/snlTh4zC8gQSOMsn8YDkhjvovdWCHBFhnsaClb1j/+WcHC
 MsQklXqzoGowu5wd/6H99APSK9barqGtYonZpoxE0rm+1qB+BiU5smjIOoljwyuwINnPQU4dJzA
 bQXe/MrnJSh7Sksd5LUyqP2/XKwrOfJamgMqMiYPyvqUsSdh/SXi92IbazB2OTYrjh2EP9g2rVH F2IswngVXlFlRAw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit


On Fri, 22 Aug 2025 15:34:17 +0200, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to GIC interrupt node to silence W=1
> warning:
> 
>   apm-storm.dtsi:636.4-639.42: Warning (interrupt_map): /soc/pcie@1f2b0000:interrupt-map:
>     Missing property '#address-cells' in node /interrupt-controller@78010000, using 0 as fallback
> 
> Value '0' is correct because:
> 1. GIC interrupt controller does not have children,
> 2. interrupt-map property (in PCI node) consists of five components and
>    the fourth component "parent unit address", which size is defined by
>    '#address-cells' of the node pointed to by the interrupt-parent
>    component, is not used (=0)
> 
> [...]

Applied, thanks!

No one picked these up, so I grabbed them. Please let me know if someone else
wants to take it.

[1/1] arm64: dts: apm: storm: Add default GIC address cells
      https://git.kernel.org/krzk/linux-dt/c/d5cb16361f89e7f60da76c7e9e32c72c49db3e82

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

