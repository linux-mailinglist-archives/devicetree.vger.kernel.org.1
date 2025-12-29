Return-Path: <devicetree+bounces-250171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A9D86CE6A96
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 13:17:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12F1F30115E3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 265CE2DAFCB;
	Mon, 29 Dec 2025 12:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dK1uKpa6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Sjo5wdwm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A262765DC
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767010636; cv=none; b=NF53zdD3xETK1TsWjAAFxM9yX96brBQeLuEgL550lR9XyVRt26hWXxvVgRTnUnIayF1i4FL/1ryVa2ZAO2a4YdqYLl5LsWoTeoES//9r6Y/poziouTHd+Au4VelemSYp7MPhB9AyWoGyMRY5WCOzZiQuKQ6ckJF+UDJzxPd/Nwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767010636; c=relaxed/simple;
	bh=59K1BDOrwc8DN4VEuImzU0+sopoS73fprGxjSI+1Qos=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L/x7wojjvqoSyY8sidBy/IlQHKWsssEURG84xqi8Z8gxHImD5DH3Eiq16Q4dBZiyHAa+TB+iu1eTkf+um9x1PMoqaRzElx49EYnF5aowFaQZK1Y1TJd6jx45sTIa+YBtFTdSSaMcWZH/5FT2BUju++pnoD0ynzMjuJtH6nJPOEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dK1uKpa6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Sjo5wdwm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAXTin3952272
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:17:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EOUwAf42MijL3YJM/xZIFeL0xBoPqmYThITGffes7rw=; b=dK1uKpa66g7C7aa5
	V8sLIEBk5/Il/fRr5Wa8Pd/nPrd1I2GDld3IenNkG9JfmOS/pNVWCdKt3Eqg/z7Q
	QJu5lEu3+JP94QM2ZtQFDNjI0fpgyoqKGWOq9P3UKICBdSLTRR4rhYuTfachUH2n
	QRV4EzXW4JF9813uHFHok6g9OowxWYJUMgwZ1LTRp0Pmy9s69qlZsM2RrhaqxkT6
	s29c5lad/x//rUCL+Oh/PWMKK6BUC/Nc9vNUuUuTuNbbu0lNX+T4gvGQ8KcWCeEU
	t4lMPQbH5dJLhjhi9Ec4DbI9VQaF7vwGmnvZjK0kAfQFEMSsnwC/MmNdkifhAMxk
	ZqAmCA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba6dr4d0x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:17:12 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee07f794fcso36063021cf.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 04:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767010632; x=1767615432; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EOUwAf42MijL3YJM/xZIFeL0xBoPqmYThITGffes7rw=;
        b=Sjo5wdwmd12sl4K3z+LfaKUmWZk28WKRFu0zDlisub2kSJDy7HeEWUDGfW4D8FmZ9y
         l/yVfb0bKrYLfiGy9FuvFAnK9iQvFYlhky+eJcvsuAzZcB9GR+RSlhL+9cLJSEAFzwtz
         3Q5IESFsV/s4H7SwNPlIPIhL47963dNH2LM86YqABq6jfXGklj/mkHfOl2ge9PGX82my
         OJfu9XWfQCKlzsP4R1AIUJFuaT2eFmHPjKE6ZF0Hak41CZvnuM+qJZ+lwmbkq8+nMRIx
         bZReSmou70wsU7uxC6Q6kMdaW/f5PFUZNukCuyzqxSgjjeE+Yl50+utpDxc1y/jyX8uH
         H98Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767010632; x=1767615432;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EOUwAf42MijL3YJM/xZIFeL0xBoPqmYThITGffes7rw=;
        b=T3GN5KDBgTnKNdtCBx/vjL7cgO8U3epu3I72HfkSGSvnADDAEEfnYouYSjL4p9aBfB
         i4HAb5Gsd1xkHvNYGe6wOKDVy/pl8DVuh2jecwnpVnm/TBNDhg6VM219UMtIyqDVdRcy
         vy0bQ9/3ew0tqs9SZSgUae7PGdYy/i1ifLzEB7Rs0gBTQXTHbS41vsX78xgmBcwVl7+L
         7NBhJ8+/zARcVvQtVXMSHfhDI97dLxyBcLtAprJsRWtejnp3//cPWQLDyNrUqEuHfBb0
         KgPtWaJgAQ1YfUIZbHh84pF0D7QBynfPEhIaUvP53B/rz6mq98CVTXlnjc4pKQO42qwO
         aEfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfsjEaClmotyFxF6jSlRNvFh0v0FBdWBneupD9YylUUmno49Q4jH+r6eFi3UbHFPkSelTRXevBn+Kf@vger.kernel.org
X-Gm-Message-State: AOJu0Ywn81H6AHrNXsez8Q5gFKTdXejBveIJ+flZlMs8eaHOrruYiq3y
	cNg9KmSrwlPd5XjaHCmOC5t0YdU+cTFirCiqkoNgSWzZjpOvgTbsx4lpBL6M62p+vXdZouIgC1+
	8qqrv7sqhj9VneE5Dywh539T2B7+AvRjCP9TY0+psDi66cA0TU/fIYOL5rQZi2GLq
X-Gm-Gg: AY/fxX4FJJd0IWw+J0rHsuF3Pg3i7dzuN3uLzTZuev5Vt8nHBoVS/jn0+LaMEQYsXKN
	jw5WSRpTONpjxvJwJ4LQ3u/j0Lv4RqplbMvlc4fbOBl2yxHthbaeotpHMEGk460Ls/gNUSZnD/e
	OcQFPdtmHQSKmPDSOEQb0QH6uIqUdQ1P6LrhSQCGZRQO6M9mHX/5YeUKeOdu9FPTtJG5fhumlLR
	TgWTU/fazLofYa0RyxmIDIKjnI37eE3jnhJOYHhGEuG0LZ05D+kAQ5E0V4cqjbAmALdd0QmYbMP
	tmExbNcjRyA74VPD/XRGsmlutvRguwz6NZ7d0SicEtnGQ2JxkSTP6fZIMTrbiiwpHdiLH9/gcqQ
	7FDGxy7jkqylcbShObPuhzyNN4QM+3MnvCDKLVBkJDJSAi8aimc8iYYM/Me3DcHaGxw==
X-Received: by 2002:ac8:5a46:0:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f4abcd86f6mr340173581cf.3.1767010631685;
        Mon, 29 Dec 2025 04:17:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvd4QH2ZZKAsfGoyIuTWAr/YsK3enb76pfOJPmIZdg0l6Pi41eVmcMWBYYNeGTL9K+dv4qSw==
X-Received: by 2002:ac8:5a46:0:b0:4f1:b580:fba8 with SMTP id d75a77b69052e-4f4abcd86f6mr340173381cf.3.1767010631225;
        Mon, 29 Dec 2025 04:17:11 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f3ffbasm3349064866b.61.2025.12.29.04.17.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 04:17:10 -0800 (PST)
Message-ID: <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 13:17:07 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>, vkoul@kernel.org,
        neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, martin.petersen@oracle.com, andersson@kernel.org,
        konradybcio@kernel.org, taniya.das@oss.qualcomm.com,
        dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDExMyBTYWx0ZWRfX2zJRZuUlSI2d
 KNaQyytSdqE5P7MRpwqWoV+ic1V4tN0FIzMb6dS4Z+MMmzpT4ARGZWMRyLhnVSOPRqSpBOImFR6
 tL7RrF2JJQlmH4HShNFCo88z53Xl2iZJl7LgMb6gaqb7Nb+h/KKIlXs7N8pgEdV2ZfI5qVO6pMl
 1hdJRwhD0HNj8RKjQkOyHwv929RX1+ZOoX7z+pU2Ex16EWEkjkxOsr1Lh0IqCywW9FxdodaJD4J
 XPTli2FNGxRQ9w9heXlCIgi2X0AelaAK1y3OLB3u9kp3kxsB2qTdX8A0GbCAmB8/uOy/rHnRaHJ
 D/CvdnXF+Ft+mHijHupCfnw/acwVbbFICv8Ti74uoQF6/Eh/G+U+iQEsNTnnHVDzflC13PdFzYb
 pPc6o1qKghk2ahosogXs0eUMZRrAw0FgV4ZdsDQepbsEQpuLyOl+10Fm1wOTYTwUe0QlpONN51J
 Ikc///BHGOHyDibMYUQ==
X-Authority-Analysis: v=2.4 cv=VdP6/Vp9 c=1 sm=1 tr=0 ts=69527148 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=j7HMW06gTmZkR37ntNYA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 2ohLleeVNtK8gRIBhZshxeyyvUbKCTFN
X-Proofpoint-ORIG-GUID: 2ohLleeVNtK8gRIBhZshxeyyvUbKCTFN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_04,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290113

On 12/29/25 7:06 AM, Pradeep P V K wrote:
> Enable UFS for HAMOA-IOT-EVK board.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---

[...]

> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l17b_2p5>;
> +	vcc-max-microamp = <1300000>;

I think they should both be 1.2 A peak

Konrad

> +	vccq-supply = <&vreg_l2i_1p2>;
> +	vccq-max-microamp = <1200000>;
> +
> +	status = "okay";
> +};
> +
>  &usb_1_ss0_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_ss0_hs_in>;
>  };

